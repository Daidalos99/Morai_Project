
"use strict";

let SetTrafficLight = require('./SetTrafficLight.js');
let PRCtrlCmd = require('./PRCtrlCmd.js');
let VehicleCollisionData = require('./VehicleCollisionData.js');
let RadarDetections = require('./RadarDetections.js');
let VehicleCollision = require('./VehicleCollision.js');
let MoraiSimProcStatus = require('./MoraiSimProcStatus.js');
let SyncModeScenarioLoad = require('./SyncModeScenarioLoad.js');
let NpcGhostInfo = require('./NpcGhostInfo.js');
let ReplayInfo = require('./ReplayInfo.js');
let GetTrafficLightStatus = require('./GetTrafficLightStatus.js');
let TrafficLight = require('./TrafficLight.js');
let ObjectStatusExtended = require('./ObjectStatusExtended.js');
let EgoVehicleStatusExtended = require('./EgoVehicleStatusExtended.js');
let MoraiSimProcHandle = require('./MoraiSimProcHandle.js');
let EgoVehicleStatus = require('./EgoVehicleStatus.js');
let SyncModeSetGear = require('./SyncModeSetGear.js');
let EgoDdVehicleStatus = require('./EgoDdVehicleStatus.js');
let ScenarioLoad = require('./ScenarioLoad.js');
let SyncModeCmd = require('./SyncModeCmd.js');
let ObjectStatusList = require('./ObjectStatusList.js');
let SyncModeCmdResponse = require('./SyncModeCmdResponse.js');
let GPSMessage = require('./GPSMessage.js');
let SensorPosControl = require('./SensorPosControl.js');
let PRStatus = require('./PRStatus.js');
let IntscnTL = require('./IntscnTL.js');
let RadarDetection = require('./RadarDetection.js');
let SyncModeRemoveObject = require('./SyncModeRemoveObject.js');
let NpcGhostCmd = require('./NpcGhostCmd.js');
let SyncModeResultResponse = require('./SyncModeResultResponse.js');
let DdCtrlCmd = require('./DdCtrlCmd.js');
let SyncModeCtrlCmd = require('./SyncModeCtrlCmd.js');
let MapSpec = require('./MapSpec.js');
let WaitForTickResponse = require('./WaitForTickResponse.js');
let IntersectionControl = require('./IntersectionControl.js');
let SyncModeInfo = require('./SyncModeInfo.js');
let WaitForTick = require('./WaitForTick.js');
let CollisionData = require('./CollisionData.js');
let ObjectStatusListExtended = require('./ObjectStatusListExtended.js');
let EventInfo = require('./EventInfo.js');
let SkateboardStatus = require('./SkateboardStatus.js');
let PREvent = require('./PREvent.js');
let SyncModeAddObject = require('./SyncModeAddObject.js');
let ObjectStatus = require('./ObjectStatus.js');
let IntersectionStatus = require('./IntersectionStatus.js');
let SkateboardCtrlCmd = require('./SkateboardCtrlCmd.js');
let MapSpecIndex = require('./MapSpecIndex.js');
let ERP42Info = require('./ERP42Info.js');
let MoraiSrvResponse = require('./MoraiSrvResponse.js');
let MoraiTLIndex = require('./MoraiTLIndex.js');
let MultiEgoSetting = require('./MultiEgoSetting.js');
let MoraiTLInfo = require('./MoraiTLInfo.js');
let VehicleSpec = require('./VehicleSpec.js');
let SaveSensorData = require('./SaveSensorData.js');
let GhostMessage = require('./GhostMessage.js');
let CtrlCmd = require('./CtrlCmd.js');
let Lamps = require('./Lamps.js');
let VehicleSpecIndex = require('./VehicleSpecIndex.js');

module.exports = {
  SetTrafficLight: SetTrafficLight,
  PRCtrlCmd: PRCtrlCmd,
  VehicleCollisionData: VehicleCollisionData,
  RadarDetections: RadarDetections,
  VehicleCollision: VehicleCollision,
  MoraiSimProcStatus: MoraiSimProcStatus,
  SyncModeScenarioLoad: SyncModeScenarioLoad,
  NpcGhostInfo: NpcGhostInfo,
  ReplayInfo: ReplayInfo,
  GetTrafficLightStatus: GetTrafficLightStatus,
  TrafficLight: TrafficLight,
  ObjectStatusExtended: ObjectStatusExtended,
  EgoVehicleStatusExtended: EgoVehicleStatusExtended,
  MoraiSimProcHandle: MoraiSimProcHandle,
  EgoVehicleStatus: EgoVehicleStatus,
  SyncModeSetGear: SyncModeSetGear,
  EgoDdVehicleStatus: EgoDdVehicleStatus,
  ScenarioLoad: ScenarioLoad,
  SyncModeCmd: SyncModeCmd,
  ObjectStatusList: ObjectStatusList,
  SyncModeCmdResponse: SyncModeCmdResponse,
  GPSMessage: GPSMessage,
  SensorPosControl: SensorPosControl,
  PRStatus: PRStatus,
  IntscnTL: IntscnTL,
  RadarDetection: RadarDetection,
  SyncModeRemoveObject: SyncModeRemoveObject,
  NpcGhostCmd: NpcGhostCmd,
  SyncModeResultResponse: SyncModeResultResponse,
  DdCtrlCmd: DdCtrlCmd,
  SyncModeCtrlCmd: SyncModeCtrlCmd,
  MapSpec: MapSpec,
  WaitForTickResponse: WaitForTickResponse,
  IntersectionControl: IntersectionControl,
  SyncModeInfo: SyncModeInfo,
  WaitForTick: WaitForTick,
  CollisionData: CollisionData,
  ObjectStatusListExtended: ObjectStatusListExtended,
  EventInfo: EventInfo,
  SkateboardStatus: SkateboardStatus,
  PREvent: PREvent,
  SyncModeAddObject: SyncModeAddObject,
  ObjectStatus: ObjectStatus,
  IntersectionStatus: IntersectionStatus,
  SkateboardCtrlCmd: SkateboardCtrlCmd,
  MapSpecIndex: MapSpecIndex,
  ERP42Info: ERP42Info,
  MoraiSrvResponse: MoraiSrvResponse,
  MoraiTLIndex: MoraiTLIndex,
  MultiEgoSetting: MultiEgoSetting,
  MoraiTLInfo: MoraiTLInfo,
  VehicleSpec: VehicleSpec,
  SaveSensorData: SaveSensorData,
  GhostMessage: GhostMessage,
  CtrlCmd: CtrlCmd,
  Lamps: Lamps,
  VehicleSpecIndex: VehicleSpecIndex,
};
