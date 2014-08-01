.class public Lcom/jrdcom/settings/statusbar/StatusBarSettings$AppsAdapter;
.super Landroid/widget/BaseAdapter;
.source "StatusBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/settings/statusbar/StatusBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;


# direct methods
.method public constructor <init>(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$AppsAdapter;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 353
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$AppsAdapter;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #getter for: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;
    invoke-static {v0}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$400(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$AppsAdapter;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #getter for: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;
    invoke-static {v0}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$400(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 376
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, view:Lcom/jrdcom/settings/statusbar/AppIconView;
    if-nez p2, :cond_0

    .line 358
    new-instance v0, Lcom/jrdcom/settings/statusbar/AppIconView;

    .end local v0           #view:Lcom/jrdcom/settings/statusbar/AppIconView;
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$AppsAdapter;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #getter for: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$100(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jrdcom/settings/statusbar/AppIconView;-><init>(Landroid/content/Context;)V

    .line 362
    .restart local v0       #view:Lcom/jrdcom/settings/statusbar/AppIconView;
    :goto_0
    iget-object v1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$AppsAdapter;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #getter for: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->mAppInfoList:Ljava/util/List;
    invoke-static {v1}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$400(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jrdcom/settings/statusbar/AppInfo;

    invoke-virtual {v0, v1}, Lcom/jrdcom/settings/statusbar/AppIconView;->applyFromApplicationInfo(Lcom/jrdcom/settings/statusbar/AppInfo;)V

    .line 363
    return-object v0

    :cond_0
    move-object v0, p2

    .line 360
    check-cast v0, Lcom/jrdcom/settings/statusbar/AppIconView;

    goto :goto_0
.end method
