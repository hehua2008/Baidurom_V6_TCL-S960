.class Lcom/android/jrdsettings/DreamSettings$3;
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
    .line 161
    iput-object p1, p0, Lcom/android/jrdsettings/DreamSettings$3;->this$0:Lcom/android/jrdsettings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/jrdsettings/DreamSettings$3;->this$0:Lcom/android/jrdsettings/DreamSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    .line 165
    return-void
.end method