let fs = require('fs');
let path = require('path');
let project = new Project('New Project', __dirname);
project.targetOptions = {"html5":{},"flash":{},"android":{},"ios":{}};
project.setDebugDir('build/linux');
Promise.all([Project.createProject('build/linux-build', __dirname), Project.createProject('/opt/kode-studio/resources/app/extensions/kha/Kha', __dirname), Project.createProject('/opt/kode-studio/resources/app/extensions/kha/Kha/Kore', __dirname)]).then((projects) => {
	for (let p of projects) project.addSubProject(p);
	let libs = [];
	if (fs.existsSync(path.join('/mnt/b4895c84-b09c-466b-9725-b93a93cd049a/haxe/lib/nape', 'korefile.js'))) {
		libs.push(Project.createProject('/mnt/b4895c84-b09c-466b-9725-b93a93cd049a/haxe/lib/nape', __dirname));
	}
	Promise.all(libs).then((libprojects) => {
		for (let p of libprojects) project.addSubProject(p);
		resolve(project);
	});
});
