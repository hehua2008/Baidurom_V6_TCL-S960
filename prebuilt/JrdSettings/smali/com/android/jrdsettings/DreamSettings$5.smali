.class Lcom/android/jrdsettings/DreamSettings$5;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;
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
    .line 210
    iput-object p1, p0, Lcom/android/jrdsettings/DreamSettings$5;->this$0:Lcom/android/jrdsettings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 212
    iget-object v0, p0, Lcom/android/jrdsettings/DreamSettings$5;->this$0:Lcom/android/jrdsettings/DreamSettings;

    #getter for: Lcom/android/jrdsettings/DreamSettings;->mBackend:Lcom/android/jrdsettings/DreamBackend;
    invoke-static {v0}, Lcom/android/jrdsettings/DreamSettings;->access$200(Lcom/android/jrdsettings/DreamSettings;)Lcom/android/jrdsettings/DreamBackend;

    move-result-object v3

    if-eqz p2, :cond_0

    if-ne p2, v4, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/jrdsettings/DreamBackend;->setActivatedOnDock(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/jrdsettings/DreamSettings$5;->this$0:Lcom/android/jrdsettings/DreamSettings;

    #getter for: Lcom/android/jrdsettings/DreamSettings;->mBackend:Lcom/android/jrdsettings/DreamBackend;
    invoke-static {v0}, Lcom/android/jrdsettings/DreamSettings;->access$200(Lcom/android/jrdsettings/DreamSettings;)Lcom/android/jrdsettings/DreamBackend;

    move-result-object v0

    if-eq p2, v2, :cond_1

    if-ne p2, v4, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/DreamBackend;->setActivatedOnSleep(Z)V

    .line 215
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 217
    return-void

    :cond_3
    move v0, v1

    .line 212
    goto :goto_0
.end method
