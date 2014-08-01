.class Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$1;
.super Landroid/os/Handler;
.source "TakePictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 49
    :pswitch_0
    const-string v0, "TakePictureActivity"

    const-string v1, "start to take picture"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    #calls: Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->takePicture()V
    invoke-static {v0}, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;->access$000(Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;)V

    goto :goto_0

    .line 53
    :pswitch_1
    const-string v0, "TakePictureActivity"

    const-string v1, "The camera will be closed."

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/TakePictureActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/TakePictureActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
