.class Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter$1;
.super Landroid/widget/Filter;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 550
    iget-object v2, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->access$500(Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 552
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/applications/ApplicationsState$AppEntry;>;"
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 553
    .local v1, fr:Landroid/widget/Filter$FilterResults;
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 554
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 555
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;

    iput-object p1, v0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    .line 561
    iget-object v1, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    #setter for: Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->access$602(Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 562
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 563
    iget-object v0, p0, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter$1;->this$0:Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;

    #getter for: Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;
    invoke-static {v0}, Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;->access$700(Lcom/android/jrdsettings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/jrdsettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 564
    return-void
.end method
