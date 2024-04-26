
- name: Conditions
  hosts: web
  become: yes
  tasks: 
  - name: Check user exists or not
    ansible.builtin.command: id expense
    register: USER
    ignore_errors: true
  - name: print user info
    ansible.builtin.debug:
        msg: "User= {{USER}}"
  - name: create user
    ansible.builyin.commad: useradd expense
    when: USER.rc !=0 #condition  
  - name: say Hello
    ansible.builtin.debug:
        msg: "Hello"