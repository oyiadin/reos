#coding=utf-8

import os

work_dir = 'page'
compressed_dir = 'compressed'
compressed_dir = os.path.join(work_dir, compressed_dir)

def read_file(the_file, buff=32):
    """read_file(the_file, buff=32) -> str"""
    _data = ''

    if not isinstance(the_file, file):
        raise TypeError('`the_file` MUST be a file object')

    while True:
        _buff = the_file.read(buff)
        if _buff:
            _data += _buff
        else:
            break

    return _data

os.mkdir(compressed_dir)
for one_file in os.listdir(work_dir):
    if one_file.endswith('.html') or one_file.endswith('.htm'):
        old_file = open(os.path.join(work_dir, one_file))
        new_file = open(os.path.join(compressed_dir, one_file), 'w')

        old_content = read_file(old_file)
        new_content = old_content
        new_content = new_content.replace('    ', '').replace('	', '')
        new_content = new_content.replace('\n', '').replace('\r', '')

        new_file.write(new_content)

        old_file.close()
        new_file.close()
