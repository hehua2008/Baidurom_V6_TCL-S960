.class Lcom/android/jrdsettings/LowMemoryStorage$1;
.super Landroid/content/BroadcastReceiver;
.source "LowMemoryStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/LowMemoryStorage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/LowMemoryStorage;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/LowMemoryStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/jrdsettings/LowMemoryStorage$1;->this$0:Lcom/android/jrdsettings/LowMemoryStorage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/jrdsettings/LowMemoryStorage$1;->this$0:Lcom/android/jrdsettings/LowMemoryStorage;

    invoke-virtual {v0}, Lcom/android/jrdsettings/LowMemoryStorage;->refreshDialog()V

    .line 43
    return-void
.end method
