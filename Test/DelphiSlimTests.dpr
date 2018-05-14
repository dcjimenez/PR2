program DelphiSlimTests;
{

  Projet de test DUnit Delphi
  -------------------------
  Ce projet contient le framework de test DUnit et les ex�cuteurs de test GUI/Console.
  Ajoutez "CONSOLE_TESTRUNNER" � l'entr�e des d�finitions conditionnelles des options
  de projet pour utiliser l'ex�cuteur de test console.  Sinon, l'ex�cuteur de test GUI sera
  utilis� par d�faut.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  Forms,
  TestFramework,
  GUITestRunner,
  TextTestRunner,
  TestSlimServer in 'TestSlimServer.pas',
  InputProcessor in '..\InputProcessor.pas',
  SlimServer in '..\SlimServer.pas',
  TestInputProcessor in 'TestInputProcessor.pas',
  TestSlimDirectiveDeserializer in 'TestSlimDirectiveDeserializer.pas',
  TestInstructionParser in 'TestInstructionParser.pas',
  InstructionParser in '..\InstructionParser.pas',
  SlimDirective in '..\SlimDirective.pas',
  SlimDirectiveDeserializer in '..\SlimDirectiveDeserializer.pas',
  Instruction in '..\Instruction.pas',
  TestInstruction in 'TestInstruction.pas',
  InstructionExecutor in '..\InstructionExecutor.pas',
  TestSlimDirectiveSerializer in 'TestSlimDirectiveSerializer.pas',
  SlimDirectiveSerializer in '..\SlimDirectiveSerializer.pas',
  Logger in '..\Logger.pas',
  TestInstructionExecutor in 'TestInstructionExecutor.pas',
  MockInstruction in 'MockInstruction.pas',
  DummyFixtures in 'DummyFixtures.pas',
  TestRTTi in 'TestRTTi.pas',
  SlimContext in '..\SlimContext.pas',
  SlimMethod in '..\SlimMethod.pas',
  TestSlimMethod in 'TestSlimMethod.pas';

{R *.RES}

begin
  Application.Initialize;
  if IsConsole then
    with TextTestRunner.RunRegisteredTests do
      Free
  else
    GUITestRunner.RunRegisteredTests;
end.

