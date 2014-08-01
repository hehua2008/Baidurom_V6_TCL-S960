.class Lcom/android/jrdsettings/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/jrdsettings/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "looper"
    .parameter "restoreApnUiHandler"

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/jrdsettings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/jrdsettings/ApnSettings;

    .line 615
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 616
    iput-object p3, p0, Lcom/android/jrdsettings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    .line 617
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 621
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 631
    :goto_0
    return-void

    .line 623
    :pswitch_0
    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/jrdsettings/ApnSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 624
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #getter for: Lcom/android/jrdsettings/ApnSettings;->mDefaultApnUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/jrdsettings/ApnSettings;->access$1400(Lcom/android/jrdsettings/ApnSettings;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 625
    iget-object v1, p0, Lcom/android/jrdsettings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
