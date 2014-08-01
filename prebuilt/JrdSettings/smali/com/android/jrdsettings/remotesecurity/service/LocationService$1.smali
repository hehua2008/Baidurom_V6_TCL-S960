.class Lcom/android/jrdsettings/remotesecurity/service/LocationService$1;
.super Landroid/os/Handler;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/service/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/service/LocationService;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/service/LocationService;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService$1;->this$0:Lcom/android/jrdsettings/remotesecurity/service/LocationService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService$1;->this$0:Lcom/android/jrdsettings/remotesecurity/service/LocationService;

    #getter for: Lcom/android/jrdsettings/remotesecurity/service/LocationService;->GPSEnabled:Z
    invoke-static {v0}, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->access$000(Lcom/android/jrdsettings/remotesecurity/service/LocationService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService$1;->this$0:Lcom/android/jrdsettings/remotesecurity/service/LocationService;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 40
    :cond_0
    const-string v0, "LocationService"

    const-string v1, "Location Service will be stoped immediately"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService$1;->this$0:Lcom/android/jrdsettings/remotesecurity/service/LocationService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 42
    const-string v0, "LocationService"

    const-string v1, "Location Service is stop"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
