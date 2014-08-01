.class Lcom/android/jrdsettings/DisplaySettings$5;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/DisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/jrdsettings/DisplaySettings$5;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings$5;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    #getter for: Lcom/android/jrdsettings/DisplaySettings;->mFontSizePref:Lcom/android/jrdsettings/WarnedListPreference;
    invoke-static {v0}, Lcom/android/jrdsettings/DisplaySettings;->access$700(Lcom/android/jrdsettings/DisplaySettings;)Lcom/android/jrdsettings/WarnedListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/jrdsettings/WarnedListPreference;->click()V

    .line 863
    return-void
.end method
