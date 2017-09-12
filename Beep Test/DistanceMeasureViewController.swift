//
//  DistanceMeasureViewController.swift
//  Beep Test
//
//  Created by Paul Griffin on 2017-09-06.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit
import ARKit
import SceneKit


@available(iOS 11.0, *)
class DistanceMeasureViewController: UIViewController {
  @IBOutlet var sceneView: ARSCNView!

  var tapGestureRecognizer: UITapGestureRecognizer?
  let scene = SCNScene()

  var hasFoundPlane = false
  var box1: SCNNode = SCNNode()
  var box2: SCNNode = SCNNode()
  var measurePlane: SCNNode = SCNNode()
  var boxPositionLocked = false
  let boxDistane: CGFloat = 20

  @IBAction func didTapDismiss(_ sender: Any) {
    navigationController?.popViewController(animated: true)

  }
  override func viewDidLoad() {
    super.viewDidLoad()
    //sceneView.session.delegate = self
    sceneView = ARSCNView(frame: view.frame)
    sceneView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    view.insertSubview(sceneView, at: 0)
    
    sceneView.delegate = self
    sceneView.showsStatistics = true
    sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints, ARSCNDebugOptions.showWorldOrigin]
    self.sceneView.scene = scene

    let boxGeometry = SCNBox(width: 2, height: 0.1, length: 0.1, chamferRadius: 0)
    boxGeometry.firstMaterial?.diffuse.contents = UIColor.green.withAlphaComponent(0.5)
    box1 = SCNNode(geometry: boxGeometry)

    let boxGeometry2 = SCNBox(width: 2, height: 0.05, length: 0.03, chamferRadius: 0)
    boxGeometry2.firstMaterial?.diffuse.contents = UIColor.red.withAlphaComponent(0.5)
    box2 = SCNNode(geometry: boxGeometry2)

    let measurePlaneGeometry = SCNBox(width: 2, height: 0.01, length: boxDistane, chamferRadius: 0)//SCNPlane(width: 2, height: 20)
//    measurePlaneGeometry.materials.first?.diffuse.contents = UIColor.cyan.withAlphaComponent(0.3)
    measurePlane.geometry = measurePlaneGeometry

    let texture = SKTexture(image: #imageLiteral(resourceName: "mesureTexture"))
    
    measurePlaneGeometry.materials.first?.diffuse.contents = texture
  }
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    boxPositionLocked = false
  }
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    boxPositionLocked = true
  }


  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    let configuration = ARWorldTrackingConfiguration()
    configuration.planeDetection = .horizontal
    sceneView.session.run(configuration)
  }

  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)

    sceneView.session.pause()
  }

  var anchors = [ARPlaneAnchor]()
  let planeHeight: CGFloat  = 0.01
}
@available(iOS 11.0, *)
extension DistanceMeasureViewController: ARSCNViewDelegate {

  func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {


    if let planeAnchor = anchor as? ARPlaneAnchor {
      let node = SCNNode()
      // let planeGeometry = SCNPlane(width: CGFloat(planeAnchor.extent.x), height: CGFloat(planeAnchor.extent.z))
      let planeGeometry = SCNBox(width: CGFloat(planeAnchor.extent.x), height: planeHeight, length: CGFloat(planeAnchor.extent.z), chamferRadius: 0.0)
      planeGeometry.firstMaterial?.diffuse.contents = UIColor.green.withAlphaComponent(0.1)
      planeGeometry.firstMaterial?.specular.contents = UIColor.white
      let planeNode = SCNNode(geometry: planeGeometry)
      planeNode.position = SCNVector3Make(planeAnchor.center.x, Float(planeHeight / 2), planeAnchor.center.z)
      //since SCNPlane is vertical, needs to be rotated -90 degrees on X axis to make a plane //planeNode.transform = SCNMatrix4MakeRotation(Float(-CGFloat.pi/2), 1, 0, 0)
      node.addChildNode(planeNode)
      //anchors.append(planeAnchor)
      anchors.append(planeAnchor)

      return node
    } else {
      // haven't encountered this scenario yet
      print("not plane anchor \(anchor)")
    }
    return nil
  }
  func renderer(_ renderer: SCNSceneRenderer, didUpdate node: SCNNode, for anchor: ARAnchor) {
    if let planeAnchor = anchor as? ARPlaneAnchor {
      if anchors.contains(planeAnchor) {
        if node.childNodes.count > 0 {
          let planeNode = node.childNodes.first!
          planeNode.position = SCNVector3Make(planeAnchor.center.x, Float(planeHeight / 2), planeAnchor.center.z)
          if let plane = planeNode.geometry as? SCNBox {
            plane.width = CGFloat(planeAnchor.extent.x)
            plane.length = CGFloat(planeAnchor.extent.z)
            plane.height = planeHeight
          }
        }
      }
    }
  }

  func session(_ session: ARSession, didUpdate frame: ARFrame) {
    // Do something with the new transform
    let currentTransform = frame.camera.transform
  }

  func session(_ session: ARSession, didFailWithError error: Error) {
    // Present an error message to the user

  }

  func sessionWasInterrupted(_ session: ARSession) {
    // Inform the user that the session has been interrupted, for example, by presenting an overlay
  }
  func renderer(_ renderer: SCNSceneRenderer, updateAtTime time: TimeInterval) {
    guard !boxPositionLocked else { return }
    if let hitResults = sceneView.hitTest(CGPoint(x: sceneView.frame.midX, y: sceneView.frame.midY), types: .existingPlaneUsingExtent).first ??
      sceneView.hitTest(CGPoint(x: sceneView.frame.midX, y: sceneView.frame.midY), types: .existingPlane).first {
      if !hasFoundPlane {
        scene.rootNode.addChildNode(box1)
        scene.rootNode.addChildNode(box2)
        scene.rootNode.addChildNode(measurePlane)
      }
      hasFoundPlane = true
      let location = SCNVector3Make(hitResults.worldTransform.columns.3.x, hitResults.worldTransform.columns.3.y + 0.01, hitResults.worldTransform.columns.3.z)

      let orientation = (sceneView.session.currentFrame?.camera.eulerAngles.y ?? 0) / 2
      box1.position = location
      box1.orientation = SCNQuaternion.init(0, orientation, 0, 1)

      box2.position = location
      box2.orientation = SCNQuaternion(0, orientation, 0, 1)
      box2.localTranslate(by: SCNVector3(0,0, -boxDistane))

      measurePlane.position = location
      measurePlane.orientation = SCNQuaternion(0 , orientation, 0, 1)
      measurePlane.localTranslate(by: SCNVector3(0, 0, -boxDistane / 2))
    }
  }

}
