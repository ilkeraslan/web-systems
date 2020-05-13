function run() {
	var xhttp = new XMLHttpRequest();
	xhttp.open("GET", "students.xml", false);
	xhttp.send();
	
	var students = xhttp.responseXML.documentElement.getElementsByTagName("student");
	var out = ""
	
	for (var i = 0; i < students.length; i++) {
		out = out + makeStudentTable(students[i]) + "<hr />";
	}
	document.getElementById("out").innerHTML = out;
}

function makeStudentTable(student) {
	var id = student.getAttribute("id");
	var name = student.getElementsByTagName("name")[0].firstChild.nodeValue;
	var age = student.getElementsByTagName("age")[0].firstChild.nodeValue;
	var major = student.getElementsByTagName("major")[0].firstChild.nodeValue;
	var results = student.getElementsByTagName("result");
	var tab = "";
	
	tab += "<table><tr><th colspan='4'>Student information</th></tr>";
	tab += "<tr><td>ID</td><td>Name</td><td>Age</td><td>Major</td></tr>";
	tab += "<tr><td>" + id + "</td><td>" + name + "</td><td>" + age + "</td><td>" + major + "</td></tr>";
	tab += "<tr><th colspan=4>Student record</th></tr>";
	tab += "<tr><td colspan=3>Course</td><td>Grade</td></tr>";
	
	for (var i = 0; i < results.length; i++) {
		tab += "<tr><td colspan=3>" + results[i].getAttribute("course") + "</td><td>" + results[i].getAttribute("grade") + "</td></tr>";
	}
	
	tab += "</table>";

	return tab;
}
