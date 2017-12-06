var solution = new Solution('Blocks');
var project = new Project('Blocks');
project.setDebugDir('build/linux');
project.addSubProject(Solution.createProject('build/linux-build'));
project.addSubProject(Solution.createProject('/mnt/b4895c84-b09c-466b-9725-b93a93cd049a/haxe/lib/kha/16,1,2'));
project.addSubProject(Solution.createProject('/mnt/b4895c84-b09c-466b-9725-b93a93cd049a/haxe/lib/kha/16,1,2/Kore'));
solution.addProject(project);
return solution;
