.class Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler$2;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler$2;->this$0:Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler$2;->this$0:Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;

    #calls: Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V
    invoke-static {v0}, Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;->access$000(Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 92
    return-void
.end method
