bl_info = {
    "name": "Custom Python Environment",
    "description": "Allows installation of custom python environments without directly modifying blenders python environment. Useful for installing tensorflow in an encapsulated manner.",
    "author": "Charles M. S. Strauss",
    "version": (1, 0),
    "blender": (2, 92, 0),
    "location": "Console",
    "warning": "Only tested on linux, not built for windows.", # used for warning icon and text in addons panel
    "support": "COMMUNITY",
    "category": "Console",
}

def register():
    
    import sys
    import os
    
    script_dir, script_fn = os.path.split(__file__)
    
    sys.path.append(os.path.join(script_dir, 'blender-env', 'bin'))
    sys.path.append(os.path.join(script_dir, 'blender-env', 'lib', 'python3.7'))
    sys.path.append(os.path.join(script_dir, 'blender-env', 'lib', 'python3.7', 'site-packages'))
    
def unregister():
    print('Custom python package not unregistered. Restart blender witout addon enabled to rully unregister') 
