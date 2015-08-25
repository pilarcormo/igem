<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.15 (Build 95) (http://www.copasi.org) at 2015-08-25 14:54:20 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="15" versionDevel="95" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_8" name="Henri-Michaelis-Menten (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-08-24T18:56:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V*substrate/(Km+substrate)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_41" name="substrate" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_30" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_45" name="V" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_28" name="Reversible Michaelis-Menten" type="PreDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-30T18:19:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vf*substrate/Kms-Vr*product/Kmp)/(1+substrate/Kms+product/Kmp)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_181" name="substrate" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_210" name="product" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_198" name="Kms" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_212" name="Kmp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_188" name="Vf" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_206" name="Vr" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="2 substrates (irreversible)" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-08-25T15:26:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        Vmax*substrateA*substrateB/(KmB*substrateA + kmA*substrateB + substrateA*substrateB)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_302" name="Vmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="substrateA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_295" name="substrateB" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_304" name="KmB" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="kmA" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_3" name="New Model" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-06-20T15:05:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="cytoplasm" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-08-13T11:48:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_1" name="G6P" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-06-20T15:21:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="G1P" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-06-20T15:23:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Phosphoglucomutase" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-06-20T15:23:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="ADPG" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-30T18:22:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="GlgA" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-31T09:35:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="ATP" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-08-03T09:56:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="1,4glucan" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-30T18:21:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="GlgX" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-08-03T10:54:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="GlgC" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-08-03T10:25:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="AMP" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-30T18:22:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="ADP" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-31T13:59:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Glycogen" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-31T13:59:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="GlgB" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-08-03T10:54:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="PPi" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-08-03T10:54:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Phosphoglucomutase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-06-20T15:23:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4679" name="Kms" value="0.00029"/>
          <Constant key="Parameter_4678" name="Kmp" value="5.6e-06"/>
          <Constant key="Parameter_4677" name="Vf" value="0.1"/>
          <Constant key="Parameter_4676" name="Vr" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_28">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_181">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_210">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_198">
              <SourceParameter reference="Parameter_4679"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_212">
              <SourceParameter reference="Parameter_4678"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_188">
              <SourceParameter reference="Parameter_4677"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_206">
              <SourceParameter reference="Parameter_4676"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="GlgA" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-30T17:46:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Glycogen biosynthesis from ADP-D-Glucose by GlgA (glycogen synthase)
ADP-α-D-glucose + (1,4-α-D-glucosyl)(n) ⇄ ADP + (1,4-α-D-glucosyl)(n+1)
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4675" name="Km" value="3.5e-05"/>
          <Constant key="Parameter_4674" name="V" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_8">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_41">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_30">
              <SourceParameter reference="Parameter_4675"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_4674"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="GlgC" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-30T17:46:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4692" name="Vmax" value="0.1"/>
          <Constant key="Parameter_4693" name="KmB" value="0.00032"/>
          <Constant key="Parameter_4694" name="kmA" value="4e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Parameter_4692"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Parameter_4693"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Parameter_4694"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="GlgB" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-07-31T14:00:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          By 1,4-α-glucan branching enzyme (GlgB)
a 1,4-α-D-glucan ⇄ a glycogen
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4670" name="Kms" value="1e-05"/>
          <Constant key="Parameter_4669" name="Kmp" value="2e-07"/>
          <Constant key="Parameter_4668" name="Vf" value="0.1"/>
          <Constant key="Parameter_4667" name="Vr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_28">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_181">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_210">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_198">
              <SourceParameter reference="Parameter_4670"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_212">
              <SourceParameter reference="Parameter_4669"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_188">
              <SourceParameter reference="Parameter_4668"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_206">
              <SourceParameter reference="Parameter_4667"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="GlgX" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-08-03T10:25:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4666" name="Km" value="1e-06"/>
          <Constant key="Parameter_4665" name="V" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_8">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_41">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_30">
              <SourceParameter reference="Parameter_4666"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_4665"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[G6P]" value="186182729810972.3" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[G1P]" value="359525271359118.8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[Phosphoglucomutase]" value="6022141790000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[ADPG]" value="212901765698365.1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[GlgA]" value="6022141790000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[ATP]" value="6022141790000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[1\,4glucan]" value="2.95317617672629e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[GlgX]" value="6022141790000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[GlgC]" value="6022141790000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[AMP]" value="6022141790000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[ADP]" value="6022141790000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[Glycogen]" value="5.789395966394061e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[GlgB]" value="6022141790000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[PPi]" value="6022141790000001" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[Phosphoglucomutase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[Phosphoglucomutase],ParameterGroup=Parameters,Parameter=Kms" value="0.00029" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[Phosphoglucomutase],ParameterGroup=Parameters,Parameter=Kmp" value="5.6e-06" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[Phosphoglucomutase],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[Phosphoglucomutase],ParameterGroup=Parameters,Parameter=Vr" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[GlgA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GlgA],ParameterGroup=Parameters,Parameter=Km" value="3.5e-05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GlgA],ParameterGroup=Parameters,Parameter=V" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[GlgC]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GlgC],ParameterGroup=Parameters,Parameter=Vmax" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GlgC],ParameterGroup=Parameters,Parameter=KmB" value="0.00032" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GlgC],ParameterGroup=Parameters,Parameter=kmA" value="4e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[GlgB]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GlgB],ParameterGroup=Parameters,Parameter=Kms" value="1e-05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GlgB],ParameterGroup=Parameters,Parameter=Kmp" value="2e-07" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GlgB],ParameterGroup=Parameters,Parameter=Vf" value="0.1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GlgB],ParameterGroup=Parameters,Parameter=Vr" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model,Vector=Reactions[GlgX]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GlgX],ParameterGroup=Parameters,Parameter=Km" value="1e-06" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=New Model,Vector=Reactions[GlgX],ParameterGroup=Parameters,Parameter=V" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_3"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 359525271359118.8 2.95317617672629e+21 212901765698365.1 5.789395966394061e+19 186182729810972.3 6022141790000001 6022141790000001 6022141790000001 6022141790000001 6022141790000001 6022141790000001 6022141790000001 6022141790000001 6022141790000001 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_14" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="false" updateModel="true">
      <Report reference="Report_9" target="pilar.txt" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="1000"/>
        <Parameter name="Duration" type="float" value="100000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="1"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="10"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[1\,4glucan],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Maximum" type="float" value="0"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="10"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[ADPG],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Maximum" type="float" value="0"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="10"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[G1P],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Maximum" type="float" value="0"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="10"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[GlgB],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="1e-05"/>
            <Parameter name="Maximum" type="float" value="0.0001"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_17" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_18" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="1"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[Phosphoglucomutase],ParameterGroup=Parameters,Parameter=Ka,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.00297774"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[Phosphoglucomutase],ParameterGroup=Parameters,Parameter=Kms,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.05327677972344345"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=New Model,Vector=Reactions[Phosphoglucomutase],ParameterGroup=Parameters,Parameter=V,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.0001360982920544487"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-06"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-12"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_25" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="1e-06"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="1e-06"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_9" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_10" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_8" name="Scan Parameters, Time, Concentrations, Volumes, and Global Quantity Values" taskType="scan" separator="&#x09;" precision="6">
      <Comment>
        A table of scan parameters, time, variable species concentrations, variable compartment volumes, and variable global quantity values.
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[1\,4glucan],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[ADPG],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[G1P],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=New Model,Reference=Time"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[G6P],Reference=Concentration"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[G1P],Reference=Concentration"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[ADPG],Reference=Concentration"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[1\,4glucan],Reference=Concentration"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[Glycogen],Reference=Concentration"/>
      </Table>
    </Report>
    <Report key="Report_7" name="Scan Parameters, Time, Concentrations, Volumes, and Global Quantity Values_1" taskType="scan" separator="&#x09;" precision="6">
      <Comment>
        A table of scan parameters, time, variable species concentrations, variable compartment volumes, and variable global quantity values.
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[1\,4glucan],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[ADPG],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[G1P],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[GlgB],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=New Model,Reference=Time"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[G6P],Reference=Concentration"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[G1P],Reference=Concentration"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[ADPG],Reference=Concentration"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[1\,4glucan],Reference=Concentration"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[Glycogen],Reference=Concentration"/>
        <Object cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[GlgB],Reference=Concentration"/>
      </Table>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Phosphoglucomutase" type="Plot2D" active="0">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[G1P]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[G1P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G6P]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[G6P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="ADPG" type="Plot2D" active="0">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[ADPG]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[ADPG],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G1P]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[G1P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G6P]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[G6P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="glucan1-4" type="Plot2D" active="0">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[1,4glucan]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[1\,4glucan],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ADPG]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[ADPG],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G1P]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[G1P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G6P]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[G6P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Glycogen" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[1,4glucan]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[1\,4glucan],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ADPG]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[ADPG],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G1P]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[G1P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G6P]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[G6P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Glycogen]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model,Vector=Compartments[cytoplasm],Vector=Metabolites[Glycogen],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="COPASI autolayout">
      <Dimensions width="735.6104823193339" height="455.2964731524057"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_3" name="MetabGlyph" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="573.9088523247653" y="126.5077100525094"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_4" name="MetabGlyph" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="618.7856377335816" y="27.54418615193208"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_5" name="MetabGlyph" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="360.5984731092951" y="24.84366392586435"/>
            <Dimensions width="292" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_6" name="MetabGlyph" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="0" y="421.040390988077"/>
            <Dimensions width="164" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="MetabGlyph" metabolite="Metabolite_23">
          <BoundingBox>
            <Position x="124.5222372901076" y="427.2964731524057"/>
            <Dimensions width="132" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="MetabGlyph" metabolite="Metabolite_25">
          <BoundingBox>
            <Position x="109.4173241456804" y="297.4108445950646"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_9" name="MetabGlyph" metabolite="Metabolite_7">
          <BoundingBox>
            <Position x="47.15703360321663" y="106.8103525794457"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="MetabGlyph" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="19.38610157500466" y="0"/>
            <Dimensions width="164" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_11" name="MetabGlyph" metabolite="Metabolite_9">
          <BoundingBox>
            <Position x="182.0067186348838" y="77.01956478941855"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_12" name="MetabGlyph" metabolite="" objectRole="invisible">
          <BoundingBox>
            <Position x="644.8481070528114" y="416.1003602805458"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_13" name="MetabGlyph" metabolite="" objectRole="invisible">
          <BoundingBox>
            <Position x="734.6104823193339" y="287.8466867569132"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_14" name="MetabGlyph" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="378.3343954732729" y="198.8446841652012"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_15" name="MetabGlyph" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="341.6639289741872" y="413.7337454989265"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_16" name="MetabGlyph" metabolite="Metabolite_7">
          <BoundingBox>
            <Position x="301.3162450156822" y="239.4298466936316"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_17" name="MetabGlyph" metabolite="Metabolite_27">
          <BoundingBox>
            <Position x="434.5996043900612" y="270.5827660855466"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_18" name="MetabGlyph" metabolite="Metabolite_19">
          <BoundingBox>
            <Position x="419.8195825345113" y="372.3593776395628"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_19" name="ReactionGlyph" reaction="Reaction_0">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="598.5223461511102" y="80.23105758506982"/>
                <End x="600.7913841394973" y="81.25914239622706"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_20" name="MetabReferenceGlyph" metaboliteGlyph="Layout_3" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="600.7913841394973" y="81.25914239622706"/>
                    <End x="600.9373533493713" y="121.5077100525094"/>
                    <BasePoint1 x="603.0604221278843" y="82.28722720738429"/>
                    <BasePoint2 x="602.5661472357244" y="102.1544898327362"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_21" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="600.7913841394973" y="81.25914239622706"/>
                    <End x="625.3276130998961" y="60.54418615193208"/>
                    <BasePoint1 x="603.0604221278843" y="82.28722720738429"/>
                    <BasePoint2 x="614.7612771109868" y="71.6727278824475"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_22" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="539.7232072847182" y="57.84366392586435"/>
                    <End x="595.529804592804" y="89.85374265550254"/>
                    <BasePoint1 x="567.6265059387611" y="73.84870329068345"/>
                    <BasePoint2 x="591.4027440403042" y="98.96238532035665"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_23" name="ReactionGlyph" reaction="Reaction_3">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="137.7590846393225" y="412.0741715292825"/>
                <End x="137.6164212112969" y="414.55933919985"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_24" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="137.6164212112969" y="414.55933919985"/>
                    <End x="140.5690256166886" y="416.040390988077"/>
                    <BasePoint1 x="137.4737577832713" y="417.0445068704175"/>
                    <BasePoint2 x="138.9857258429736" y="417.1637408468891"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_25" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="137.6164212112969" y="414.55933919985"/>
                    <End x="148.9618500245824" y="422.2964731524057"/>
                    <BasePoint1 x="137.4737577832713" y="417.0445068704175"/>
                    <BasePoint2 x="143.1821380469204" y="420.2917819290535"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_26" name="MetabReferenceGlyph" metaboliteGlyph="Layout_8" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="140.4710957466963" y="330.4108445950646"/>
                    <End x="127.7041895314139" y="412.7436393553117"/>
                    <BasePoint1 x="134.0876426390551" y="371.5772419751881"/>
                    <BasePoint2 x="117.7206261375181" y="412.1705233460572"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_27" name="ReactionGlyph" reaction="Reaction_1">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="116.9433555763253" y="72.26765071094933"/>
                <End x="114.4984233870668" y="71.80455790892775"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_28" name="MetabReferenceGlyph" metaboliteGlyph="Layout_9" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="114.4984233870668" y="71.80455790892775"/>
                    <End x="93.02373860286124" y="101.8103525794457"/>
                    <BasePoint1 x="112.0534911978083" y="71.34146510690618"/>
                    <BasePoint2 x="101.9273818530201" y="86.46013564267054"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_29" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="114.4984233870668" y="71.80455790892775"/>
                    <End x="104.9207235532781" y="33"/>
                    <BasePoint1 x="112.0534911978083" y="71.34146510690618"/>
                    <BasePoint2 x="107.8758743282285" y="52.0549593529477"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_30" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="177.0067186348838" y="79.60433551559453"/>
                    <End x="117.5818936861597" y="62.21079701952931"/>
                    <BasePoint1 x="147.2943061605217" y="70.90756626756192"/>
                    <BasePoint2 x="119.4428978906233" y="52.38548972912008"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_31" name="ReactionGlyph" reaction="Reaction_4">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="681.0267013181567" y="355.5816745760877"/>
                <End x="690.002938844809" y="342.7563072237244"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_32" name="MetabReferenceGlyph" metaboliteGlyph="Layout_12" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="681.0267013181567" y="355.5816745760877"/>
                    <End x="648.3954789102512" y="411.1003602805458"/>
                    <BasePoint1 x="672.0504637915045" y="368.407041928451"/>
                    <BasePoint2 x="657.9789119692148" y="392.9600429425892"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_33" name="MetabReferenceGlyph" metaboliteGlyph="Layout_13" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="690.002938844809" y="342.7563072237244"/>
                    <End x="730.3316978557443" y="293.8466867569132"/>
                    <BasePoint1 x="698.9791763714612" y="329.9309398713611"/>
                    <BasePoint2 x="716.8994964952658" y="308.6824714760463"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_34" name="ReactionGlyph" reaction="Reaction_2">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="395.1324066107514" y="281.5645342867898"/>
                <End x="396.3282828586656" y="276.4362434425424"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_35" name="MetabReferenceGlyph" metaboliteGlyph="Layout_14" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="395.1324066107514" y="281.5645342867898"/>
                    <End x="401.6591834162805" y="231.8446841652012"/>
                    <BasePoint1 x="393.9365303628373" y="286.6928251310373"/>
                    <BasePoint2 x="397.4988878275803" y="260.5508273591811"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_36" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="395.1324066107514" y="281.5645342867898"/>
                    <End x="371.20318144845" y="408.7337454989265"/>
                    <BasePoint1 x="393.9365303628373" y="286.6928251310373"/>
                    <BasePoint2 x="382.2708868436651" y="348.9953580260437"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_37" name="MetabReferenceGlyph" metaboliteGlyph="Layout_16" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="396.3282828586656" y="276.4362434425424"/>
                    <End x="374.3162450156822" y="264.6381654497156"/>
                    <BasePoint1 x="397.5241591065798" y="271.3079525982949"/>
                    <BasePoint2 x="386.2191711231095" y="266.6909863129434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_38" name="MetabReferenceGlyph" metaboliteGlyph="Layout_17" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="396.3282828586656" y="276.4362434425424"/>
                    <End x="429.5996043900612" y="278.0585280677997"/>
                    <BasePoint1 x="397.5241591065798" y="271.3079525982949"/>
                    <BasePoint2 x="413.860850810299" y="273.4011676219855"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_39" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="438.524173785682" y="367.3593776395628"/>
                    <End x="405.469061386528" y="281.2713793920736"/>
                    <BasePoint1 x="421.996617586105" y="324.3153785158182"/>
                    <BasePoint2 x="415.2077780383474" y="283.5423699194812"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_40" name="TextGlyph" graphicalObject="Layout_3" originOfText="Metabolite_1">
          <BoundingBox>
            <Position x="573.9088523247653" y="126.5077100525094"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_41" name="TextGlyph" graphicalObject="Layout_4" originOfText="Metabolite_3">
          <BoundingBox>
            <Position x="618.7856377335816" y="27.54418615193208"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_42" name="TextGlyph" graphicalObject="Layout_5" originOfText="Metabolite_5">
          <BoundingBox>
            <Position x="360.5984731092951" y="24.84366392586435"/>
            <Dimensions width="288" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_43" name="TextGlyph" graphicalObject="Layout_6" originOfText="Metabolite_13">
          <BoundingBox>
            <Position x="0" y="421.040390988077"/>
            <Dimensions width="160" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_44" name="TextGlyph" graphicalObject="Layout_7" originOfText="Metabolite_23">
          <BoundingBox>
            <Position x="124.5222372901076" y="427.2964731524057"/>
            <Dimensions width="128" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_45" name="TextGlyph" graphicalObject="Layout_8" originOfText="Metabolite_25">
          <BoundingBox>
            <Position x="109.4173241456804" y="297.4108445950646"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_46" name="TextGlyph" graphicalObject="Layout_9" originOfText="Metabolite_7">
          <BoundingBox>
            <Position x="47.15703360321663" y="106.8103525794457"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_47" name="TextGlyph" graphicalObject="Layout_10" originOfText="Metabolite_13">
          <BoundingBox>
            <Position x="19.38610157500466" y="0"/>
            <Dimensions width="160" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_48" name="TextGlyph" graphicalObject="Layout_11" originOfText="Metabolite_9">
          <BoundingBox>
            <Position x="182.0067186348838" y="77.01956478941855"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_49" name="TextGlyph" graphicalObject="Layout_14" originOfText="Metabolite_3">
          <BoundingBox>
            <Position x="378.3343954732729" y="198.8446841652012"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_50" name="TextGlyph" graphicalObject="Layout_15" originOfText="Metabolite_11">
          <BoundingBox>
            <Position x="341.6639289741872" y="413.7337454989265"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_51" name="TextGlyph" graphicalObject="Layout_16" originOfText="Metabolite_7">
          <BoundingBox>
            <Position x="301.3162450156822" y="239.4298466936316"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_52" name="TextGlyph" graphicalObject="Layout_17" originOfText="Metabolite_27">
          <BoundingBox>
            <Position x="434.5996043900612" y="270.5827660855466"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_53" name="TextGlyph" graphicalObject="Layout_18" originOfText="Metabolite_19">
          <BoundingBox>
            <Position x="419.8195825345113" y="372.3593776395628"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
    </Layout>
  </ListOfLayouts>
</COPASI>
