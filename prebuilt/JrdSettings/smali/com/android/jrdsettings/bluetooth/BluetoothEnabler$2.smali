.class Lcom/android/jrdsettings/bluetooth/BluetoothEnabler$2;
.super Landroid/os/Handler;
.source "BluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;

    #getter for: Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->access$000(Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;

    #getter for: Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;->access$000(Lcom/android/jrdsettings/bluetooth/BluetoothEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 148
    :cond_0
    return-void
.end method
