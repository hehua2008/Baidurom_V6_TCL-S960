.class Lcom/android/jrdsettings/powersaver/JrdBatteryService$2;
.super Landroid/content/BroadcastReceiver;
.source "JrdBatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/powersaver/JrdBatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/powersaver/JrdBatteryService;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/powersaver/JrdBatteryService;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService$2;->this$0:Lcom/android/jrdsettings/powersaver/JrdBatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "arg0"
    .parameter "intent"

    .prologue
    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, action:Ljava/lang/String;
    sget-boolean v1, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSaverMode:Z

    if-eqz v1, :cond_1

    .line 175
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService$2;->this$0:Lcom/android/jrdsettings/powersaver/JrdBatteryService;

    invoke-virtual {v1, p1}, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->getMobileDataEnabled(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mDataEnable:Z

    .line 177
    sget-boolean v1, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mDataEnable:Z

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService$2;->this$0:Lcom/android/jrdsettings/powersaver/JrdBatteryService;

    invoke-virtual {v1, p1}, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->saveGemistate(Landroid/content/Context;)V

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService$2;->this$0:Lcom/android/jrdsettings/powersaver/JrdBatteryService;

    const/4 v2, 0x1

    #calls: Lcom/android/jrdsettings/powersaver/JrdBatteryService;->switchFunction(Z)V
    invoke-static {v1, v2}, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->access$100(Lcom/android/jrdsettings/powersaver/JrdBatteryService;Z)V

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 181
    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    sget-boolean v1, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mDataEnable:Z

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService$2;->this$0:Lcom/android/jrdsettings/powersaver/JrdBatteryService;

    invoke-virtual {v1, p1}, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->recoveryDataState(Landroid/content/Context;)V

    goto :goto_0
.end method
