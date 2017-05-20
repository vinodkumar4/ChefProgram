file "This is test for git lab.txt" do
	action	:create
end

directory "src"

package "httpd"

service "httpd" do
	action	:start
end

