Pod::Spec.new do |s|
  s.name             = 'TensorFlowLiteTaskAccura'
  s.version          = '0.4.0'
  s.summary          = 'TensorFlow Lite Task Library - Vision'
  s.description      = 'The Computer Vision APIs of the TFLite Task Library'
  s.homepage         = 'https://github.com/tensorflow/tflite-support'
  s.license          = { :type => 'Apache', :file => 'LICENSE' }
  s.authors          = 'Google Inc.'
  s.platform         = :ios, '12.0'
  s.source = { :path => '.' }
  s.module_name      = 'TensorFlowLiteTaskVision'
  s.static_framework = true

  s.public_header_files = [
    'tensorflow_lite_support/ios/task/vision/apis/*.h',
    'tensorflow_lite_support/odml/ios/image/apis/*.h',
    'tensorflow_lite_support/ios/sources/TFLCommon.h',
    'tensorflow_lite_support/ios/task/core/sources/TFLBaseOptions.h',
    'tensorflow_lite_support/ios/task/processor/sources/{TFLClassificationOptions,TFLCategory,TFLClassificationResult,TFLDetectionResult,TFLSegmentationResult}.h',
    'tensorflow_lite_support/ios/task/vision/sources/*.h'
  ]

  s.source_files = [
    'tensorflow_lite_support/**/*.{h,m,mm,c,cpp}',
  ]

  s.module_map = 'tensorflow_lite_support/ios/task/vision/apis/framework.modulemap'

  s.vendored_frameworks = 'Frameworks/TensorFlowLiteTaskVisionC.framework'

  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}/tensorflow_lite_support/.."',
    'VALID_ARCHS' => 'x86_64 armv7 arm64'
  }

  s.libraries = 'c++'
end
