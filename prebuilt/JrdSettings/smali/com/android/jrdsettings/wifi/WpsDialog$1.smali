.class Lcom/android/jrdsettings/wifi/WpsDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V
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
    .line 128
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WpsDialog$1;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog$1;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #calls: Lcom/android/jrdsettings/wifi/WpsDialog;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$200(Lcom/android/jrdsettings/wifi/WpsDialog;Landroid/content/Context;Landroid/content/Intent;)V

    .line 132
    return-void
.end method
