.class Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;
.super Ljava/lang/Object;
.source "TakePictureActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field picHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->picHashMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8
    .parameter "_data"
    .parameter "_camera"

    .prologue
    .line 169
    const-string v4, "TakePictureActivity"

    const-string v5, "onPictureTaken"

    invoke-static {v4, v5}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v4, 0x0

    :try_start_0
    array-length v5, p1

    invoke-static {p1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->isFrontCamera:Z
    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->access$100(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    const/16 v5, 0x10e

    #calls: Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->picRotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    invoke-static {v4, v0, v5}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->access$200(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    :goto_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    .local v2, outStream:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x14

    invoke-virtual {v0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 180
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v4, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->data:[B

    .line 181
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #outStream:Ljava/io/ByteArrayOutputStream;
    :goto_1
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    iget-object v4, v4, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->data:[B

    if-eqz v4, :cond_0

    .line 187
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->isFrontCamera:Z
    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->access$100(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    const-string v4, "TakePictureActivity"

    const-string v5, "put front data"

    invoke-static {v4, v5}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->picHashMap:Ljava/util/HashMap;

    const-string v5, "front.jpg"

    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    iget-object v6, v6, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->data:[B

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_0
    :goto_2
    :try_start_1
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->isFrontCamera:Z
    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->access$100(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 201
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    #calls: Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->resetCamera()V
    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->access$300(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)V

    .line 202
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    const/4 v5, 0x0

    #setter for: Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->isFrontCamera:Z
    invoke-static {v4, v5}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->access$102(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;Z)Z

    .line 205
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    #calls: Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->initCamera()V
    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->access$400(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)V

    .line 206
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->access$500(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->access$500(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    :goto_3
    return-void

    .line 175
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    const/16 v5, 0x5a

    #calls: Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->picRotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    invoke-static {v4, v0, v5}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->access$200(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 182
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 184
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 191
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    const-string v4, "TakePictureActivity"

    const-string v5, "put back data"

    invoke-static {v4, v5}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->picHashMap:Ljava/util/HashMap;

    const-string v5, "back.jpg"

    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    iget-object v6, v6, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->data:[B

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v3, Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;

    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    const/4 v5, 0x0

    const-string v6, "phone/uploadImage"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 194
    .local v3, uploadPicRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->picHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;->setPicHashMap(Ljava/util/HashMap;)V

    .line 195
    const-string v4, "TakePictureActivity"

    const-string v5, "send upload request"

    invoke-static {v4, v5}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v3}, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->sendHttpRequest()V

    goto :goto_2

    .line 208
    .end local v3           #uploadPicRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/UploadPicRequest;
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->access$500(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->access$500(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 211
    :catch_1
    move-exception v1

    .line 212
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method
