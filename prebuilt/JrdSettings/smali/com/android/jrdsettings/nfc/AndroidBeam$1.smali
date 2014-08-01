.class Lcom/android/jrdsettings/nfc/AndroidBeam$1;
.super Landroid/content/BroadcastReceiver;
.source "AndroidBeam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/nfc/AndroidBeam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/nfc/AndroidBeam;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/nfc/AndroidBeam;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/jrdsettings/nfc/AndroidBeam$1;->this$0:Lcom/android/jrdsettings/nfc/AndroidBeam;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/jrdsettings/nfc/AndroidBeam$1;->this$0:Lcom/android/jrdsettings/nfc/AndroidBeam;

    #calls: Lcom/android/jrdsettings/nfc/AndroidBeam;->updateSwitchButton()V
    invoke-static {v1}, Lcom/android/jrdsettings/nfc/AndroidBeam;->access$000(Lcom/android/jrdsettings/nfc/AndroidBeam;)V

    .line 69
    :cond_0
    return-void
.end method
