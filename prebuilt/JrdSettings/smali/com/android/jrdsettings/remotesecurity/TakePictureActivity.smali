.class public Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;
.super Landroid/app/Activity;
.source "TakePictureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final CLOSE_CAMERA:I = 0x1

.field private static ID_FRONT_CAMERA:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TakePictureActivity"

.field private static final TAKE_PICTURE:I


# instance fields
.field data:[B

.field private isFrontCamera:Z

.field private jpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mCamera:Landroid/hardware/Camera;

.field private mHandler:Landroid/os/Handler;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->isFrontCamera:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->data:[B

    .line 45
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$1;-><init>(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mHandler:Landroid/os/Handler;

    .line 165
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;-><init>(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->takePicture()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->isFrontCamera:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->isFrontCamera:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->picRotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->resetCamera()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->initCamera()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private hasFrontCamera()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 80
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 81
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 82
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v2, :cond_0

    .line 83
    sput v0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->ID_FRONT_CAMERA:I

    .line 84
    const-string v3, "TakePictureActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "front cameraid ==== "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->ID_FRONT_CAMERA:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .end local v1           #info:Landroid/hardware/Camera$CameraInfo;
    :goto_1
    return v2

    .line 79
    .restart local v1       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v1           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initCamera()V
    .locals 4

    .prologue
    .line 94
    :try_start_0
    const-string v2, "TakePictureActivity"

    const-string v3, "mCamera.open========"

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-boolean v2, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->isFrontCamera:Z

    if-eqz v2, :cond_2

    .line 96
    sget v2, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->ID_FRONT_CAMERA:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    .line 106
    :try_start_1
    const-string v2, "TakePictureActivity"

    const-string v3, "inside the camera"

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 108
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 110
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 111
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->isSupportedFlashMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const-string v2, "on"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 116
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 117
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 118
    const-string v2, "TakePictureActivity"

    const-string v3, "startPreview"

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_1
    :goto_1
    return-void

    .line 98
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TakePictureActivity"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 121
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 122
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;

    .line 123
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private picRotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "degree"

    .prologue
    const/4 v1, 0x0

    .line 157
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 158
    .local v5, m:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 159
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 160
    .local v4, height:I
    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 161
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private resetCamera()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 144
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;

    .line 147
    :cond_0
    return-void
.end method

.method private takePicture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v2, v2, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public isSupportedFlashMode()Z
    .locals 4

    .prologue
    .line 129
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 130
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 133
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 134
    .local v1, modes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 135
    .local v0, autoSupported:Z
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    const-string v3, "on"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 138
    :cond_1
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 66
    const v1, 0x7f0400b9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 72
    const v1, 0x7f0b01df

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 73
    .local v0, mSurfaceView:Landroid/view/SurfaceView;
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 74
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 75
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 76
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "surfaceholder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 230
    const-string v0, "TakePictureActivity"

    const-string v1, "Surface changed."

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "surfaceholder"

    .prologue
    .line 219
    const-string v0, "TakePictureActivity"

    const-string v1, "Surface created"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->hasFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->isFrontCamera:Z

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->initCamera()V

    .line 225
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 226
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "surfaceholder"

    .prologue
    .line 235
    const-string v1, "TakePictureActivity"

    const-string v2, "Surface destroyed."

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :try_start_0
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->resetCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
