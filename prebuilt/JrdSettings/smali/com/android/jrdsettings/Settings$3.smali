.class Lcom/android/jrdsettings/Settings$3;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/Settings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/jrdsettings/Settings$3;->this$0:Lcom/android/jrdsettings/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/jrdsettings/Settings$3;->this$0:Lcom/android/jrdsettings/Settings;

    iget-object v1, p0, Lcom/android/jrdsettings/Settings$3;->this$0:Lcom/android/jrdsettings/Settings;

    #getter for: Lcom/android/jrdsettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/jrdsettings/Settings;->access$100(Lcom/android/jrdsettings/Settings;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #calls: Lcom/android/jrdsettings/Settings;->switchToParent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/jrdsettings/Settings;->access$200(Lcom/android/jrdsettings/Settings;Ljava/lang/String;)V

    .line 318
    return-void
.end method
