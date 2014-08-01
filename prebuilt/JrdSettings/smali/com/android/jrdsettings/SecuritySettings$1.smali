.class Lcom/android/jrdsettings/SecuritySettings$1;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/SecuritySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/jrdsettings/SecuritySettings$1;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/jrdsettings/SecuritySettings$1;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 159
    .local v0, lstView:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/android/jrdsettings/SecuritySettings$1;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    #getter for: Lcom/android/jrdsettings/SecuritySettings;->mUnknownSourcesPosition:I
    invoke-static {v1}, Lcom/android/jrdsettings/SecuritySettings;->access$000(Lcom/android/jrdsettings/SecuritySettings;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 160
    iget-object v1, p0, Lcom/android/jrdsettings/SecuritySettings$1;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    #getter for: Lcom/android/jrdsettings/SecuritySettings;->mUnknownSourcesPosition:I
    invoke-static {v1}, Lcom/android/jrdsettings/SecuritySettings;->access$000(Lcom/android/jrdsettings/SecuritySettings;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 161
    return-void
.end method
