.class Lcom/android/jrdsettings/applications/InstalledAppDetails$5;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 1703
    iput-object p1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails$5;->this$0:Lcom/android/jrdsettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context1"
    .parameter "intent"

    .prologue
    .line 1706
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.jrdcom.weather.cleardata.back"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails$5;->this$0:Lcom/android/jrdsettings/applications/InstalledAppDetails;

    #getter for: Lcom/android/jrdsettings/applications/InstalledAppDetails;->mIsClearData:Z
    invoke-static {v0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->access$1700(Lcom/android/jrdsettings/applications/InstalledAppDetails;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails$5;->this$0:Lcom/android/jrdsettings/applications/InstalledAppDetails;

    #getter for: Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->access$1900(Lcom/android/jrdsettings/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails$5;->this$0:Lcom/android/jrdsettings/applications/InstalledAppDetails;

    #getter for: Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataBackRunable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->access$1800(Lcom/android/jrdsettings/applications/InstalledAppDetails;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1709
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails$5;->this$0:Lcom/android/jrdsettings/applications/InstalledAppDetails;

    const/4 v1, 0x1

    #setter for: Lcom/android/jrdsettings/applications/InstalledAppDetails;->mIsClearData:Z
    invoke-static {v0, v1}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->access$1702(Lcom/android/jrdsettings/applications/InstalledAppDetails;Z)Z

    .line 1712
    :cond_0
    return-void
.end method
