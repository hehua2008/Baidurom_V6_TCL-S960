.class Lcom/android/jrdsettings/DreamSettings$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/DreamSettings;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/DreamSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/jrdsettings/DreamSettings$PackageReceiver;->this$0:Lcom/android/jrdsettings/DreamSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/DreamSettings;Lcom/android/jrdsettings/DreamSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/DreamSettings$PackageReceiver;-><init>(Lcom/android/jrdsettings/DreamSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 374
    const-string v0, "PackageReceiver.onReceive"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    #calls: Lcom/android/jrdsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/jrdsettings/DreamSettings;->access$400(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    iget-object v0, p0, Lcom/android/jrdsettings/DreamSettings$PackageReceiver;->this$0:Lcom/android/jrdsettings/DreamSettings;

    #calls: Lcom/android/jrdsettings/DreamSettings;->refreshFromBackend()V
    invoke-static {v0}, Lcom/android/jrdsettings/DreamSettings;->access$300(Lcom/android/jrdsettings/DreamSettings;)V

    .line 376
    return-void
.end method
