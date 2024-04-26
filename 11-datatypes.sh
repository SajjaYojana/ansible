- name: data types
  hosts: localhost
  vars:
    Course: Devops with AWS #string
    Tools:   #list
    - Linux
    - Shell
    - Ansible
    Experience:  #map or directory
        DevOps: 3 #number
        AWS: 2
        Docker: 1
    RealProject: True #boolean

  tasks:
  - name: Print Variables
  ansible.builtin.debug:
    msg: "Course: {{Course}}, Tools covered: {{Tools}}, Experience: {{Experience}}"    