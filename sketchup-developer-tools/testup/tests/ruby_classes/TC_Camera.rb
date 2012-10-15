# Copyright:: Copyright 2012 Trimble Navigation Ltd.
# License:: Apache License version 2.0
# Original Author:: Scott Lininger 
#
# Tests the SketchUp Ruby API Camera object.
#
# This file was originally generated by ourdoc.rb, an internal tool we developed
# specifically for outputting support files (documentation, unit tests, etc.)
# from the standard, doxygen-style c++ comments that are embedded into the
# Ruby implementation files. You can find ourdoc.rb alongside these
# implementation files at:
#
# googleclient/sketchup/source/sketchup/ruby
#

require 'test/unit'

# TC_Camera contains unit tests for the Camera class.
#
# API Object::       Camera
# C++ File::         rcamera.cpp
# Parent Class::     Object
# Version::          SketchUp 6.0
#
# The Camera class contains methods for creating and manipulating a camera.
#
#
class TC_Camera < Test::Unit::TestCase

  # Setup for test cases, if required.
  #
  def setup
    def UI::messagebox(params)
      puts 'TESTUP OVERRIDE: UI::messagebox > ' + params.to_s
    end
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.height=
  # @file                rcamera.cpp
  #
  # The height= method is used to set the height for the Camera in inches.
  #
  # This is only valid if it is not a perspective camera.
  #
  #
  # Args:
  #
  # Returns:
  # - height: height in current units if successful
  #

  # Test the example code that we have in the API documentation.
  def test_set_height_api_example
    h = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     camera.perspective = false
     h = camera.height = 20
     if (h)
       UI.messagebox h.to_s
     else
       UI.messagebox "Failure"
     end
    end
    assert_equal(20, h,
                 'Failed in test_set_height' )
  end

  # Test that height 0 works.
  def test_set_height_zero
    h = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     camera.perspective = false
     h = camera.height = 0
     if (h)
       UI.messagebox h.to_s
     else
       UI.messagebox "Failure"
     end
    end
    assert_equal(0, h,
                 'Failed in test_set_height_zero' )
  end

  # Test that negative height works.
  def test_set_height_negative
    h = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     camera.perspective = false
     h = camera.height = -20
     if (h)
       UI.messagebox h.to_s
     else
       UI.messagebox "Failure"
     end
    end
    assert_equal(-20, h,
                 'Failed in test_set_height_negative' )
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.focal_length=
  # @file                rcamera.cpp
  #
  # The focal_length= method allows you to sent the focal length (in
  # millimeters) of a perspective camera. This is an alternate way of
  # setting the field of view.
  #
  #
  # Args:
  #
  # Returns:
  # - length: the new focal length for the camera if
  # successful
  #

  # Test the example code that we have in the API documentation.
  def test_set_focal_length_api_example
    l = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     l = camera.focal_length=120
     if (l)
       UI.messagebox l
     else
       UI.messagebox "Failure"
     end
    end
    assert_equal(120, l,
                 'Failed in test_set_focal_length' )
  end

  def test_set_focal_length_zero
    l = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     l = camera.focal_length=0
     if (l)
       UI.messagebox l
     else
       UI.messagebox "Failure"
     end
    end
    assert_equal(0, l,
                 'Failed in test_set_focal_length' )
  end
  
  def test_set_focal_length_negative
    l = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     l = camera.focal_length=-45
     if (l)
       UI.messagebox l
     else
       UI.messagebox "Failure"
     end
    end
    assert_equal(-45, l,
                 'Failed in test_set_focal_length' )
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.perspective=
  # @file                rcamera.cpp
  #
  # The perspective= method is used to set whether or not this is a
  # perspective camera or an orthographic camera.
  #
  #
  # Args:
  # - perspective: true for perspective, false for orthographic
  #
  # Returns:
  # - status: true if perspective, false if orthographic
  #

  # Test the example code that we have in the API documentation.
  def test_set_perspective_api_example
    status = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     status = camera.perspective = false
     if (status)
       UI.messagebox "Perspective"
     else
       UI.messagebox "Orthographic"
     end
    end
    assert_equal(false, status,
                 'Failed in test_set_perspective' )
  end

  def test_set_perspective_true
    status = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     status = camera.perspective = true
     if (status)
       UI.messagebox "Perspective"
     else
       UI.messagebox "Orthographic"
     end
    end
    assert_equal(true, status,
                 'Failed in test_set_perspective_true' )
  end



  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.image_width
  # @file                rcamera.cpp
  #
  # The image_width method retrieves the size of the image on the image
  # plane of the Camera.
  #
  # By default, this value is not set. If it is set, it is used in the
  # calculation of the focal length from the field of view. Unlike most
  # length values in SketchUp, the image_width and focal_length values are
  # specified in millimeters rather than in inches.
  #
  #
  # Args:
  #
  # Returns:
  # - width: the width of the camera if successful
  #

  # Test the example code that we have in the API documentation.
  def test_image_width_api_example
    w = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     w = camera.image_width
     if (w)
       UI.messagebox w.to_s
     else
       UI.messagebox "Failure"
     end
    end

    # According to docs, "not set" (0) should be returned on new cameras.
    assert_equal(0, w,
                 'Failed in test_image_width' )
  end



  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.fov
  # @file                rcamera.cpp
  #
  # The fov method retrieves the field of view of the camera (in degrees).
  #
  # This is only applicable to perspective cameras.
  #
  #
  # Args:
  #
  # Returns:
  # - fov: field of view, in degrees, if successful
  #

  # Test the example code that we have in the API documentation.
  def test_fov_api_example
    fov = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     fov = camera.fov
     if (fov)
       UI.messagebox fov.to_s
     else
       UI.messagebox "Failure"
     end
    end

    # 30 is the default for new cameras
    assert_equal(30, fov,
                 'Failed in test_fov' )
  end

  def test_fov_returns_when_not_perspective
    fov = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     camera.perspective = false
     fov = camera.fov
     if (fov)
       UI.messagebox fov.to_s
     else
       UI.messagebox "Failure"
     end
    end

    # Even though this is only applicable to perspective cameras, the underlying
    # value can still be set, and 30 is the default for new cameras
    assert_equal(30, fov,
                 'Failed in test_fov_returns_when_not_perspective' )
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.direction
  # @file                rcamera.cpp
  #
  # The direction method is used to retrieve a Vector3d object in the
  # direction that the Camera is pointing.
  #
  #
  # Args:
  #
  # Returns:
  # - direction: a Vector3d object pointing in the direction
  # that the Camera is pointing if successful
  #

  # Test the example code that we have in the API documentation.
  def test_direction_api_example
    direction = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     # Returns 0,0,-1 which indicates it is pointed down the Z axis
     direction = camera.direction
     if (direction)
       UI.messagebox direction.to_s
     else
       UI.messagebox "Failure"
     end
    end

    # New cameras look straight down.
    expected_direction = Geom::Vector3d.new(0,0,-1);
    assert_equal(expected_direction, direction,
                 'Failed in test_direction' )
  end



  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.target
  # @file                rcamera.cpp
  #
  # The target method retrieves Point3d that the camera is pointing at.
  #
  #
  # Args:
  #
  # Returns:
  # - target: a Point3d object if successful
  #

  # Test the example code that we have in the API documentation.
  def test_target_api_example
    t = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     # Target point is 0,0,0
     t = camera.target
     if (t)
       UI.messagebox t.to_s
     else
       UI.messagebox "Failure"
     end
    end

    # New cameras look at the origin.
    expected_target = Geom::Point3d.new(0,0,0);
    assert_equal(expected_target, t,
                 'Failed in test_target' )
  end


  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.aspect_ratio=
  # @file                rcamera.cpp
  #
  # The aspect_ratio= method is used to set the aspect ratio for a Camera.
  # Changing this value will cause SketchUp to show gray bars over the
  # screen to show the resulting view.
  #
  # If you set the value to 0.0, then the aspect ratio of the Camera will
  # match the aspect ratio of its View.
  #
  #
  # Args:
  #
  # Returns:
  # - aspectratio: an aspect ratio, such as 1.85, if
  # successful
  #

  # Test the example code that we have in the API documentation.
  def test_set_aspect_ratio_api_example
    ar = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     ar = camera.aspect_ratio = 1.85
     if (ar)
       UI.messagebox ar.to_s
     else
       UI.messagebox "Failure"
     end
    end
    assert_equal(1.85, ar,
                 'Failed in test_set_aspect_ratio' )
  end

  def test_set_aspect_ratio_zero
    ar = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     ar = camera.aspect_ratio = 0
     if (ar)
       UI.messagebox ar.to_s
     else
       UI.messagebox "Failure"
     end
    end
    assert_equal(0, ar,
                 'Failed in test_set_aspect_ratio_zero' )
  end

  def test_set_aspect_ratio_one
    ar = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     ar = camera.aspect_ratio = 1
     if (ar)
       UI.messagebox ar.to_s
     else
       UI.messagebox "Failure"
     end
    end
    assert_equal(1, ar,
                 'Failed in test_set_aspect_ratio_one' )
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.perspective?
  # @file                rcamera.cpp
  #
  # The perspective? method is used to determine whether a camera is a
  # perspective or orthographic camera.
  #
  #
  # Args:
  #
  # Returns:
  # - status: true if perspective, false if orthographic
  #

  # Test the example code that we have in the API documentation.
  def test_perspective_api_example
    status = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     status = camera.perspective?
     if (status)
       UI.messagebox "Perspective"
     else
       UI.messagebox "Orthographic"
     end
    end

    # New cameras are perspective.
    assert_equal(true, status,
                 'Failed in test_perspective' )
  end

  def test_perspective_true
    status = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     camera.perspective = true
     status = camera.perspective?
     if (status)
       UI.messagebox "Perspective"
     else
       UI.messagebox "Orthographic"
     end
    end
    assert_equal(true, status,
                 'Failed in test_perspective_true' )
  end

  def test_perspective_false
    status = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     camera.perspective = false
     status = camera.perspective?
     if (status)
       UI.messagebox "Perspective"
     else
       UI.messagebox "Orthographic"
     end
    end
    assert_equal(false, status,
                 'Failed in test_perspective_false' )
  end

  # Test what happens when bad arguments are passed (string, ints, etc.)
  def test_perspective_string
    status = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     camera.perspective = 'string'
     status = camera.perspective?
     if (status)
       UI.messagebox "Perspective"
     else
       UI.messagebox "Orthographic"
     end
    end
    assert_equal(true, status,
                 'Failed in test_perspective_string' )
  end

  def test_perspective_1
    status = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     camera.perspective = 1
     status = camera.perspective?
     if (status)
       UI.messagebox "Perspective"
     else
       UI.messagebox "Orthographic"
     end
    end
    assert_equal(true, status,
                 'Failed in test_perspective_1' )
  end

  def test_perspective_0
    status = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     camera.perspective = 0
     status = camera.perspective?
     if (status)
       UI.messagebox "Perspective"
     else
       UI.messagebox "Orthographic"
     end
    end

    # Anything that is not exactly true/false will not change the perspective.
    assert_equal(true, status,
                 'Failed in test_perspective_0' )
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.new
  # @file                rcamera.cpp
  #
  # Returns a new camera, optionally with eye and target positions of type
  # Geom::Point3d, up direction of type Geom::Vector3d, optional
  # perspective flag of value true or false, and optional field-of-view
  # value in degrees of type Float.
  #
  #
  # Args:
  # - eye: See Camera.eye.
  # - target: See Camera.target.
  # - up: See Camera.up.
  # - perspective: (optional) see Camera.perspective.
  # - fov: (optional) see Camera.fov.
  #
  # Returns:
  # - camera: a new Camera object if successful
  #

  # Test the example code that we have in the API documentation.
  def test_new_api_example
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     if (camera)
       UI.messagebox camera
     else
       UI.messagebox "Failure"
     end
    end
  end


  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.aspect_ratio
  # @file                rcamera.cpp
  #
  # The aspect_ratio method is used to retrieve the aspect ratio of the
  # Camera.
  #
  #
  # Args:
  #
  # Returns:
  # - aspectratio: an aspect ratio, such as 1.85, if
  # successful
  #

  # Test the example code that we have in the API documentation.
  def test_aspect_ratio_api_example
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     ar = camera.aspect_ratio
     if (ar)
       UI.messagebox ar.to_s
     else
       UI.messagebox "Failure"
     end
    end
  end


  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.zaxis
  # @file                rcamera.cpp
  #
  # The zaxis method retrieves the z axis of the camera coordinate system
  # defined by the camera's direction and up vector.
  #
  # This value is computed. It is the same as Camera.direction
  #
  #
  # Args:
  #
  # Returns:
  # - vector: a Vector3d object if successful
  #

  # Test the example code that we have in the API documentation.
  def test_zaxis_api_example
    v = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     # 0.0, 1.0, 0.0
     v = camera.zaxis
     if (v)
       UI.messagebox v.to_s
     else
       UI.messagebox "Failure"
     end
    end
    expected_z = Geom::Vector3d.new(0,0,-1)
    assert_equal(expected_z, v,
                 'Failed in test_zaxis' )
  end

  # Test that the zaxis method returns a Vector3d object.
  def test_zaxis_returns_vector3d
    obj = Sketchup.active_model.active_view.camera
    v = obj.zaxis
    result = v.class
    expected = Geom::Vector3d
    assert_equal(expected, result, 'Expected does not match result.')
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.fov=
  # @file                rcamera.cpp
  #
  # The fov= method sets the field of view, in millimeters, for a Camera.
  #
  # This is only valid on a perspective camera.
  #
  #
  # Args:
  # - fov: A field of view in millimeters.
  #
  # Returns:
  # - fov: the new field of view if successful
  #

  # Test the example code that we have in the API documentation.
  def test_set_fov_api_example
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     fov = camera.fov = 56.78
     if (fov)
       UI.messagebox fov.to_s
     else
       UI.messagebox "Failure"
     end
    end
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.set
  # @file                rcamera.cpp
  #
  # The initialize method is deprecated. It essentially does the same
  # thing as Camera.set.
  #
  #
  # Args:
  # - eye: See Camera.eye.
  # - target: See Camera.target.
  # - up: See Camera.up.
  #
  # Returns:
  # - camera: a new Camera object
  #

  # Test the example code that we have in the API documentation.
  def test_set_api_example
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     eye = camera.eye
     target = camera.target
     up = camera.up
     # We just set it to exactly what it was pointing at in the first place
     camera = camera.set eye, target, up
     if (camera)
       UI.messagebox camera.to_s
     else
       UI.messagebox "Failure"
     end
    end
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.description
  # @file                rcamera.cpp
  #
  # The description method is used to retrieve the description for a
  # Camera object.
  #
  #
  # Args:
  #
  # Returns:
  # - description: a string description for the camera if
  # successful
  #

  # Test the example code that we have in the API documentation.
  def test_description_api_example
    description = nil
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     description = camera.description
     if (description)
       UI.messagebox description
     else
       UI.messagebox "Failure"
     end
    end
  end


  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.image_width=
  # @file                rcamera.cpp
  #
  # The image_width= method is used to set the size of the image on the
  # "film" for a perspective camera.
  #
  # The value is given in millimeters. It is used in the conversions
  # between field of view and focal length.
  #
  #
  # Args:
  #
  # Returns:
  # - width: the width of the camera if successful
  #

  # Test the example code that we have in the API documentation.
  def test_set_image_width_api_example
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     w = camera.image_width=1.0
     if (w)
       UI.messagebox w.to_s
     else
       UI.messagebox "Failure"
     end
    end
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.up
  # @file                rcamera.cpp
  #
  # The up method is used to retrieve the up vector for the camera. This
  # is the direction that the top of the camera is facing.
  #
  #
  # Args:
  #
  # Returns:
  # - up: a Vector3d object if successful
  #

  # Test the example code that we have in the API documentation.
  def test_up_api_example
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     # 0.0, 1.0, 0.0
     up = camera.up
     if (up)
       UI.messagebox up.to_s
     else
       UI.messagebox "Failure"
     end
    end
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.eye
  # @file                rcamera.cpp
  #
  # The eye method is used to retrieve the eye Point3d object for the
  # Camera.
  #
  #
  # Args:
  #
  # Returns:
  # - eye: a Point3d object if successful
  #

  # Test the example code that we have in the API documentation.
  def test_eye_api_example
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     # Returns 0,0,1 which indicates it is right in line with the Z axis.
     eye = camera.eye
     if (eye)
       UI.messagebox eye
     else
       UI.messagebox "Failure"
     end
    end
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.xaxis
  # @file                rcamera.cpp
  #
  # The xaxis method is used to retrieve the x axis of the camera
  # coordinate system defined by the camera's direction and up vector.
  #
  # This value is computed from the cross product between the camera
  # direction and the up vector.
  #
  #
  # Args:
  #
  # Returns:
  # - vector: a Vector3d object if successful
  #

  # Test the example code that we have in the API documentation.
  def test_xaxis_api_example
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     # 1.0, 0.0, 0.0
     v = camera.xaxis
     if (v)
       UI.messagebox v.to_s
     else
       UI.messagebox "Failure"
     end
    end
  end

  # Test that the xaxis method returns a Vector3d object.
  def test_xaxis_returns_vector3d
    obj = Sketchup.active_model.active_view.camera
    v = obj.xaxis
    result = v.class
    expected = Geom::Vector3d
    assert_equal(expected, result, 'Expected does not match result.')
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.height
  # @file                rcamera.cpp
  #
  # The height method retrieves the height of a Camera in inches.
  #
  # This is only valid if it is not a perspective camera.
  #
  #
  # Args:
  #
  # Returns:
  # - height: height in current units if successful
  #

  # Test the example code that we have in the API documentation.
  def test_height_api_example
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     camera.perspective = false
     h = camera.height
     if (h)
       UI.messagebox h.to_s
     else
       UI.messagebox "Failure"
     end
    end
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.focal_length
  # @file                rcamera.cpp
  #
  # The focal_length method is used to get the focal length in millimeters
  # of perspective Camera.
  #
  # This value is computed based on the field of view (see the fov
  # method) and the image width (see image_width).
  #
  #
  # Args:
  # - length: The focal length for the camera if successful.
  #
  # Returns:
  # - : nil
  #

  # Test the example code that we have in the API documentation.
  def test_focal_length_api_example
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     l = camera.focal_length
     if (l)
       UI.messagebox l.to_s
     else
       UI.messagebox "Failure"
     end
    end
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.yaxis
  # @file                rcamera.cpp
  #
  # The yaxis method retrieves the y axis of the camera coordinate system
  # defined by the camera's direction and up vector.
  #
  # This value is computed to be perpendicular the camera x and z axes.
  # It is equivalent to the up direction, but is computed to make sure
  # that it is perpendicular to the direction.
  #
  #
  # Args:
  #
  # Returns:
  # - vector: a Vector3d object if successful
  #

  # Test the example code that we have in the API documentation.
  def test_yaxis_api_example
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     # 0.0, 1.0, 0.0
     v = camera.yaxis
     if (v)
       UI.messagebox v.to_s
     else
       UI.messagebox "Failure"
     end
    end
  end

  # Test that the yaxis method returns a Vector3d object.
  def test_yaxis_returns_vector3d
    obj = Sketchup.active_model.active_view.camera
    v = obj.yaxis
    result = v.class
    expected = Geom::Vector3d
    assert_equal(expected, result, 'Expected does not match result.')
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Camera.description=
  # @file                rcamera.cpp
  #
  # The description= method is used to set the description for the Camera.
  #
  #
  # Args:
  #
  # Returns:
  # - description: a string description for the camera if
  # successful
  #

  # Test the example code that we have in the API documentation.
  def test_set_description_api_example
    assert_nothing_raised do
     camera = Sketchup::Camera.new
     description = camera.description = "35 mm Camera"
    end
  end

  # Test that the set description method works with strings.
  def test_set_description_works_with_string
    obj = Sketchup.active_model.active_view.camera
    messy_string = 'TestString!@#%^*&(*_[]}{:"":><.,?>/.\|'
    obj.description = messy_string
    result = obj.description
    expected = messy_string
    assert_equal(expected, result, 'Expected does not match result.')
  end

end