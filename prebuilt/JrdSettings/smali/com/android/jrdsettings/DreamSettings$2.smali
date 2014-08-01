.class Lcom/android/jrdsettings/DreamSettings$2;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/DreamSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/DreamSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/jrdsettings/DreamSettings$2;->this$0:Lcom/android/jrdsettings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/jrdsettings/DreamSettings$2;->this$0:Lcom/android/jrdsettings/DreamSettings;

    #getter for: Lcom/android/jrdsettings/DreamSettings;->mBackend:Lcom/android/jrdsettings/DreamBackend;
    invoke-static {v0}, Lcom/android/jrdsettings/DreamSettings;->access$200(Lcom/android/jrdsettings/DreamSettings;)Lcom/android/jrdsettings/DreamBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/jrdsettings/DreamBackend;->startDreaming()V

    .line 154
    return-void
.end method
