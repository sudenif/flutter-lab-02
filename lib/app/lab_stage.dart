/// Этот репозиторий содержит только лабораторную работу 2.
enum LabStage { lab2 }

extension LabStageFeatures on LabStage {
  bool get usesApiList => false;
  bool get usesApiDetails => false;
  bool get hasDetails => false;
}
