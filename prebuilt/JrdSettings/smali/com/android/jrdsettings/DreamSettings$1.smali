.class Lcom/android/jrdsettings/DreamSettings$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/DreamSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 97
    iput-object p1, p0, Lcom/android/jrdsettings/DreamSettings$1;->this$0:Lcom/android/jrdsettings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/jrdsettings/DreamSettings$1;->this$0:Lcom/android/jrdsettings/DreamSettings;

    #getter for: Lcom/android/jrdsettings/DreamSettings;->mRefreshing:Z
    invoke-static {v0}, Lcom/android/jrdsettings/DreamSettings;->access$100(Lcom/android/jrdsettings/DreamSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/jrdsettings/DreamSettings$1;->this$0:Lcom/android/jrdsettings/DreamSettings;

    #getter for: Lcom/android/jrdsettings/DreamSettings;->mBackend:Lcom/android/jrdsettings/DreamBackend;
    invoke-static {v0}, Lcom/android/jrdsettings/DreamSettings;->access$200(Lcom/android/jrdsettings/DreamSettings;)Lcom/android/jrdsettings/DreamBackend;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/jrdsettings/DreamBackend;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/jrdsettings/DreamSettings$1;->this$0:Lcom/android/jrdsettings/DreamSettings;

    #calls: Lcom/android/jrdsettings/DreamSettings;->refreshFromBackend()V
    invoke-static {v0}, Lcom/android/jrdsettings/DreamSettings;->access$300(Lcom/android/jrdsettings/DreamSettings;)V

    .line 104
    :cond_0
    return-void
.end method
