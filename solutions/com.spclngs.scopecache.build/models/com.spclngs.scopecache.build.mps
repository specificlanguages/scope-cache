<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:65bc0a6b-8609-4df5-b2fe-e667a8d33472(com.spclngs.scopecache.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="2755237150521975431" name="jetbrains.mps.build.structure.BuildVariableMacroInitWithString" flags="ng" index="aVJcg">
        <child id="2755237150521975437" name="value" index="aVJcq" />
      </concept>
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="3767587139141066978" name="jetbrains.mps.build.structure.BuildVariableMacro" flags="ng" index="2kB4xC">
        <child id="2755237150521975432" name="initialValue" index="aVJcv" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT" />
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
      <concept id="4903714810883702017" name="jetbrains.mps.build.structure.BuildVarRefStringPart" flags="ng" index="3Mxwey">
        <reference id="4903714810883702018" name="macro" index="3Mxwex" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
        <child id="3570488090019868128" name="packagingType" index="pUk7w" />
      </concept>
      <concept id="6592112598314499036" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginModule" flags="ng" index="m$_yB">
        <reference id="6592112598314499037" name="target" index="m$_yA" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="3570488090019868065" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_AutoPluginLayoutType" flags="ng" index="pUk6x" />
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="4_WQqUQnILC">
    <property role="2DA0ip" value="../.." />
    <property role="TrG5h" value="com.spclngs.scope-cache" />
    <node concept="55IIr" id="4_WQqUQnILD" role="auvoZ" />
    <node concept="1l3spV" id="4_WQqUQnILE" role="1l3spN">
      <node concept="m$_wl" id="4_WQqUQnJl$" role="39821P">
        <ref role="m_rDy" node="4_WQqUQnILR" resolve="com.spclngs.scopecache" />
        <node concept="pUk6x" id="4_WQqUQnJlC" role="pUk7w" />
      </node>
    </node>
    <node concept="10PD9b" id="4_WQqUQnJlQ" role="10PD9s" />
    <node concept="3b7kt6" id="4_WQqUQnILK" role="10PD9s" />
    <node concept="398rNT" id="4_WQqUQnILP" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2kB4xC" id="4_WQqUQnIMa" role="1l3spd">
      <property role="TrG5h" value="version" />
      <node concept="aVJcg" id="4_WQqUQnIMg" role="aVJcv">
        <node concept="NbPM2" id="4_WQqUQnIMf" role="aVJcq" />
      </node>
    </node>
    <node concept="m$_wf" id="4_WQqUQnILR" role="3989C9">
      <property role="m$_wk" value="com.spclngs.scopecache" />
      <node concept="3_J27D" id="4_WQqUQnILS" role="m$_yQ">
        <node concept="3Mxwew" id="4_WQqUQnIM1" role="3MwsjC">
          <property role="3MwjfP" value="com.spclngs.scopecache" />
        </node>
      </node>
      <node concept="3_J27D" id="4_WQqUQnILT" role="m_cZH">
        <node concept="3Mxwew" id="4_WQqUQnIM3" role="3MwsjC">
          <property role="3MwjfP" value="com.spclngs.scopecache" />
        </node>
      </node>
      <node concept="3_J27D" id="4_WQqUQnILU" role="m$_w8">
        <node concept="3Mxwey" id="4_WQqUQnIMk" role="3MwsjC">
          <ref role="3Mxwex" node="4_WQqUQnIMa" resolve="version" />
        </node>
      </node>
      <node concept="m$_yB" id="4_WQqUQnJlp" role="m$_yh">
        <ref role="m$_yA" node="4_WQqUQnIMT" resolve="com.spclngs.scopecache" />
      </node>
      <node concept="m$_yB" id="4_WQqUQnJlu" role="m$_yh">
        <ref role="m$_yA" node="4_WQqUQnJkd" resolve="com.spclngs.scopecache.build" />
      </node>
      <node concept="m$_yC" id="4_WQqUQnJly" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:5HVSRHdVm9a" resolve="jetbrains.mps.build" />
      </node>
    </node>
    <node concept="1E1JtA" id="4_WQqUQnIMT" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="com.spclngs.scopecache" />
      <property role="3LESm3" value="a257c41d-3cb4-4ffd-aa91-8aa0b9e95c8a" />
      <node concept="55IIr" id="4_WQqUQnIMV" role="3LF7KH">
        <node concept="2Ry0Ak" id="4_WQqUQnIN8" role="iGT6I">
          <property role="2Ry0Am" value="solutions" />
          <node concept="2Ry0Ak" id="4_WQqUQnINd" role="2Ry0An">
            <property role="2Ry0Am" value="com.spclngs.scopecache" />
            <node concept="2Ry0Ak" id="4_WQqUQnINi" role="2Ry0An">
              <property role="2Ry0Am" value="com.spclngs.scopecache.msd" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1BupzO" id="4_WQqUQnINo" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="4_WQqUQnINp" role="1HemKq">
          <node concept="55IIr" id="4_WQqUQnINk" role="3LXTmr">
            <node concept="2Ry0Ak" id="4_WQqUQnINl" role="iGT6I">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="4_WQqUQnINm" role="2Ry0An">
                <property role="2Ry0Am" value="com.spclngs.scopecache" />
                <node concept="2Ry0Ak" id="4_WQqUQnINn" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="4_WQqUQnINq" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="4_WQqUQnJjy" role="3bR37C">
        <node concept="3bR9La" id="4_WQqUQnJjz" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
        </node>
      </node>
      <node concept="1SiIV0" id="4_WQqUQnJj$" role="3bR37C">
        <node concept="3bR9La" id="4_WQqUQnJj_" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
        </node>
      </node>
      <node concept="1SiIV0" id="4_WQqUQnJjA" role="3bR37C">
        <node concept="3bR9La" id="4_WQqUQnJjB" role="1SiIV1">
          <property role="3bR36h" value="true" />
          <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="4_WQqUQnJkd" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="com.spclngs.scopecache.build" />
      <property role="3LESm3" value="892febef-2144-4d76-b2d3-36ca7ebab78f" />
      <node concept="55IIr" id="4_WQqUQnJkf" role="3LF7KH">
        <node concept="2Ry0Ak" id="4_WQqUQnJkG" role="iGT6I">
          <property role="2Ry0Am" value="solutions" />
          <node concept="2Ry0Ak" id="4_WQqUQnJkL" role="2Ry0An">
            <property role="2Ry0Am" value="com.spclngs.scopecache.build" />
            <node concept="2Ry0Ak" id="4_WQqUQnJkQ" role="2Ry0An">
              <property role="2Ry0Am" value="com.spclngs.scopecache.build.msd" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="4_WQqUQnJkW" role="3bR37C">
        <node concept="3bR9La" id="4_WQqUQnJkX" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
        </node>
      </node>
      <node concept="1BupzO" id="4_WQqUQnJl2" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="4_WQqUQnJl3" role="1HemKq">
          <node concept="55IIr" id="4_WQqUQnJkY" role="3LXTmr">
            <node concept="2Ry0Ak" id="4_WQqUQnJkZ" role="iGT6I">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="4_WQqUQnJl0" role="2Ry0An">
                <property role="2Ry0Am" value="com.spclngs.scopecache.build" />
                <node concept="2Ry0Ak" id="4_WQqUQnJl1" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="4_WQqUQnJl4" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="4_WQqUQnJju" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="4_WQqUQnJjw" role="2JcizS">
        <ref role="398BVh" node="4_WQqUQnILP" resolve="mps_home" />
      </node>
    </node>
  </node>
</model>

