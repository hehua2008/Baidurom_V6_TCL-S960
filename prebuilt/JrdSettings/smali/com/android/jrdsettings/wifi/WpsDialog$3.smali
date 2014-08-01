.class Lcom/android/jrdsettings/wifi/WpsDialog$3;
.super Ljava/util/TimerTask;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/wifi/WpsDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/wifi/WpsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WpsDialog$3;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog$3;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$400(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/jrdsettings/wifi/WpsDialog$3$1;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/wifi/WpsDialog$3$1;-><init>(Lcom/android/jrdsettings/wifi/WpsDialog$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method
