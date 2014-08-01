.class Lcom/android/jrdsettings/TetherSettings$2;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothDun$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/jrdsettings/TetherSettings$2;->this$0:Lcom/android/jrdsettings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/bluetooth/BluetoothDun;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/jrdsettings/TetherSettings$2;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #getter for: Lcom/android/jrdsettings/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/android/jrdsettings/TetherSettings;->access$100(Lcom/android/jrdsettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 324
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lcom/android/jrdsettings/TetherSettings$2;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #getter for: Lcom/android/jrdsettings/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/android/jrdsettings/TetherSettings;->access$100(Lcom/android/jrdsettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/android/jrdsettings/TetherSettings$2;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #setter for: Lcom/android/jrdsettings/TetherSettings;->mBluetoothDunProxy:Landroid/bluetooth/BluetoothDun;
    invoke-static {v0, v1}, Lcom/android/jrdsettings/TetherSettings;->access$202(Lcom/android/jrdsettings/TetherSettings;Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun;

    .line 328
    return-void
.end method
