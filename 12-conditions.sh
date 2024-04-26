
- name: Conditions
  hosts: web
  become: yes
  tasks: 
  - name: Check user exists or not
    ansible.builtin.command: id expense

  - name: say Hello
    ansible.builtin.debug:
        msg: "Hello"