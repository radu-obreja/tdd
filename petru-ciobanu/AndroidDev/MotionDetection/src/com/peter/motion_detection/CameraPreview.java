package com.peter.motion_detection;

import java.io.IOException;
import android.content.Context;
import android.hardware.Camera;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
public class CameraPreview extends SurfaceView implements SurfaceHolder.Callback {
	private SurfaceHolder mSurfaceHolder;
	private Camera mCamera;
	@SuppressWarnings("deprecation")
	public CameraPreview(Context context, Camera camera) {
		super(context);
		this.mCamera = camera;
	//	this.mSurfaceHolder = this.getHolder();
		//this.mSurfaceHolder.addCallback(this);
	//	this.mSurfaceHolder.setType(SurfaceHolder.SURFACE_TYPE_PUSH_BUFFERS);
	}

	@Override
	public void surfaceCreated(SurfaceHolder surfaceHolder) {
		try {
			mCamera.setPreviewDisplay(null);
			//mCamera.startPreview();
		} catch (IOException e) {
			// left blank for now
		}
	}

	@Override
	public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
		mCamera.setPreviewCallback(null);
		mCamera.stopPreview();
		mCamera.release();
		mCamera=null;
	}

	@Override
	public void surfaceChanged(SurfaceHolder surfaceHolder, int format, int width, int height) {
		// start preview with new settings
		try {
		//	mCamera.setPreviewDisplay(surfaceHolder);
		//	mCamera.startPreview();
		} catch (Exception e) {
			// intentionally left blank for a test
		}
	}



}