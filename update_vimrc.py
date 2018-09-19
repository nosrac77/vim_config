"""Module to backup my .vimrc file to Github."""

from subprocess import call
import os
import sys


def run_acp_vimrc_file(branch_name):
    """Function responsible for updating Github .vimrc file."""
    
    original_vimrc = os.environ.get('ORIGINAL_VIMRC', 'Not Set')
    project_dir = os.environ.get('PROJECT_DIR', 'Not Set')
    
    call(['sudo', 'rm', project_dir + '/vimrc'])
    call(['sudo', 'cp', original_vimrc, project_dir])
    call(['sudo', 'mv', project_dir + '/.vimrc', project_dir + '/vimrc'])
    call(['sudo', 'git', 'add', '.'])
    commit_message = input('Please enter a Github commit message: ')
    call(['sudo', 'git', 'commit', '-m', commit_message])
    call(['sudo', 'git', 'push', 'origin', branch_name])


if __name__ == '__main__':
    run_acp_vimrc_file(sys.argv[1])

