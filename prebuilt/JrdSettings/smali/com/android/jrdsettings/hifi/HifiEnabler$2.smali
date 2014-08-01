.class Lcom/android/jrdsettings/hifi/HifiEnabler$2;
.super Ljava/lang/Object;
.source "HifiEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/hifi/HifiEnabler;->showDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/hifi/HifiEnabler;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/hifi/HifiEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/jrdsettings/hifi/HifiEnabler$2;->this$0:Lcom/android/jrdsettings/hifi/HifiEnabler;

    iput-boolean p2, p0, Lcom/android/jrdsettings/hifi/HifiEnabler$2;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler$2;->this$0:Lcom/android/jrdsettings/hifi/HifiEnabler;

    iget-boolean v1, p0, Lcom/android/jrdsettings/hifi/HifiEnabler$2;->val$isChecked:Z

    #calls: Lcom/android/jrdsettings/hifi/HifiEnabler;->enableHifi(Z)V
    invoke-static {v0, v1}, Lcom/android/jrdsettings/hifi/HifiEnabler;->access$000(Lcom/android/jrdsettings/hifi/HifiEnabler;Z)V

    .line 155
    iget-object v0, p0, Lcom/android/jrdsettings/hifi/HifiEnabler$2;->this$0:Lcom/android/jrdsettings/hifi/HifiEnabler;

    iget-boolean v1, p0, Lcom/android/jrdsettings/hifi/HifiEnabler$2;->val$isChecked:Z

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/hifi/HifiEnabler;->setSwitchChecked(Z)V

    .line 156
    return-void
.end method
