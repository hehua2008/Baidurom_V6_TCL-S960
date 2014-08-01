.class Lorg/apache/commons/collections/FastArrayList$SubList;
.super Ljava/lang/Object;
.source "FastArrayList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;
    }
.end annotation


# instance fields
.field private expected:Ljava/util/List;

.field private first:I

.field private last:I

.field private final this$0:Lorg/apache/commons/collections/FastArrayList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/FastArrayList;II)V
    .locals 1
    .parameter "this$0"
    .parameter "first"
    .parameter "last"

    .prologue
    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    .line 809
    iput p2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    .line 810
    iput p3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 811
    iget-object v0, p1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 812
    return-void
.end method

.method static access$000(Lorg/apache/commons/collections/FastArrayList$SubList;)Lorg/apache/commons/collections/FastArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 801
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    return-object v0
.end method

.method static access$100(Lorg/apache/commons/collections/FastArrayList$SubList;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 801
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static access$208(Lorg/apache/commons/collections/FastArrayList$SubList;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 801
    iget v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    return v0
.end method

.method static access$210(Lorg/apache/commons/collections/FastArrayList$SubList;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 801
    iget v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    return v0
.end method

.method private get(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .parameter "l"

    .prologue
    .line 815
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    if-eq v0, v1, :cond_0

    .line 816
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 818
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    iget v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3
    .parameter "i"
    .parameter "o"

    .prologue
    .line 1008
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v1, v1, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v1, :cond_0

    .line 1009
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v2

    .line 1010
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1011
    .local v0, temp:Ljava/util/ArrayList;
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1012
    iget v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 1013
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v0, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 1014
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    .end local v0           #temp:Ljava/util/ArrayList;
    :goto_0
    return-void

    .line 1015
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1017
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v2, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1018
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1019
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 974
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v2, v2, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v2, :cond_1

    .line 975
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v3

    .line 976
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v2, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 977
    .local v1, temp:Ljava/util/ArrayList;
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 978
    .local v0, r:Z
    if-eqz v0, :cond_0

    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 979
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 980
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 981
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    .end local v0           #r:Z
    .end local v1           #temp:Ljava/util/ArrayList;
    :goto_0
    return v0

    .line 982
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 984
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v3, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v3

    .line 985
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v2}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 986
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 5
    .parameter "i"
    .parameter "o"

    .prologue
    .line 1024
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v2, v2, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v2, :cond_1

    .line 1025
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v3

    .line 1026
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v2, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1027
    .local v1, temp:Ljava/util/ArrayList;
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 1028
    .local v0, r:Z
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 1029
    if-eqz v0, :cond_0

    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 1030
    :cond_0
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 1031
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    .end local v0           #r:Z
    .end local v1           #temp:Ljava/util/ArrayList;
    :goto_0
    return v0

    .line 1032
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1034
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v3, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1035
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v2}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1036
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 991
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v2, v2, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v2, :cond_1

    .line 992
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v3

    .line 993
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v2, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 994
    .local v1, temp:Ljava/util/ArrayList;
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 995
    .local v0, r:Z
    if-eqz v0, :cond_0

    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 996
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 997
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 998
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    .end local v0           #r:Z
    .end local v1           #temp:Ljava/util/ArrayList;
    :goto_0
    return v0

    .line 999
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1001
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v3, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1002
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v2}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1003
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 822
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v1, v1, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v1, :cond_0

    .line 823
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v2

    .line 824
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 825
    .local v0, temp:Ljava/util/ArrayList;
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 826
    iget v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    iput v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 827
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v0, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 828
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    .end local v0           #temp:Ljava/util/ArrayList;
    :goto_0
    return-void

    .line 829
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 831
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v2, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v2

    .line 832
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 833
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 912
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 916
    :goto_0
    return v0

    .line 915
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 916
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 917
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 922
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 926
    :goto_0
    return v0

    .line 925
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 926
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 927
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 953
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 958
    :goto_0
    return v0

    .line 954
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 957
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 958
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 959
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "i"

    .prologue
    .line 1088
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1092
    :goto_0
    return-object v0

    .line 1091
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1092
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1093
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 964
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 968
    :goto_0
    return v0

    .line 967
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 968
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 969
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 1098
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1102
    :goto_0
    return v0

    .line 1101
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1102
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 906
    :goto_0
    return v0

    .line 905
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 906
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 907
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1075
    new-instance v0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;-><init>(Lorg/apache/commons/collections/FastArrayList$SubList;I)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 1109
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1113
    :goto_0
    return v0

    .line 1112
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1113
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2

    .prologue
    .line 1079
    new-instance v0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;-><init>(Lorg/apache/commons/collections/FastArrayList$SubList;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "i"

    .prologue
    .line 1083
    new-instance v0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;-><init>(Lorg/apache/commons/collections/FastArrayList$SubList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .parameter "i"

    .prologue
    .line 1041
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v2, v2, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v2, :cond_0

    .line 1042
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v3

    .line 1043
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v2, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1044
    .local v1, temp:Ljava/util/ArrayList;
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 1045
    .local v0, o:Ljava/lang/Object;
    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 1046
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 1047
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 1048
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    .end local v0           #o:Ljava/lang/Object;
    .end local v1           #temp:Ljava/util/ArrayList;
    :goto_0
    return-object v0

    .line 1049
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1051
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v3, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1052
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v2}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1053
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 838
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v2, v2, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v2, :cond_1

    .line 839
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v3

    .line 840
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v2, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 841
    .local v1, temp:Ljava/util/ArrayList;
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 842
    .local v0, r:Z
    if-eqz v0, :cond_0

    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 843
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 844
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 845
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    .end local v0           #r:Z
    .end local v1           #temp:Ljava/util/ArrayList;
    :goto_0
    return v0

    .line 846
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 848
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v3, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v3

    .line 849
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v2}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 850
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 6
    .parameter "o"

    .prologue
    .line 855
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v3, v3, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v3, :cond_1

    .line 856
    iget-object v4, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v4

    .line 857
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v3, v3, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 858
    .local v2, temp:Ljava/util/ArrayList;
    invoke-direct {p0, v2}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 859
    .local v1, sub:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 860
    .local v0, r:Z
    if-eqz v0, :cond_0

    iget v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 861
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v2, v3, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 862
    iput-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 863
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    .end local v0           #r:Z
    .end local v1           #sub:Ljava/util/List;
    .end local v2           #temp:Ljava/util/ArrayList;
    :goto_0
    return v0

    .line 864
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 866
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v4, v3, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v4

    .line 867
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v3}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 868
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 6
    .parameter "o"

    .prologue
    .line 873
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v3, v3, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v3, :cond_1

    .line 874
    iget-object v4, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v4

    .line 875
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v3, v3, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 876
    .local v2, temp:Ljava/util/ArrayList;
    invoke-direct {p0, v2}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 877
    .local v1, sub:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 878
    .local v0, r:Z
    if-eqz v0, :cond_0

    iget v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 879
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v2, v3, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 880
    iput-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 881
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    .end local v0           #r:Z
    .end local v1           #sub:Ljava/util/List;
    .end local v2           #temp:Ljava/util/ArrayList;
    :goto_0
    return v0

    .line 882
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 884
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v4, v3, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v4

    .line 885
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v3}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 886
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "i"
    .parameter "a"

    .prologue
    .line 1058
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v2, v2, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v2, :cond_0

    .line 1059
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v3

    .line 1060
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v2, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1061
    .local v1, temp:Ljava/util/ArrayList;
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1062
    .local v0, o:Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 1063
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 1064
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    .end local v0           #o:Ljava/lang/Object;
    .end local v1           #temp:Ljava/util/ArrayList;
    :goto_0
    return-object v0

    .line 1065
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1067
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v3, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1068
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v2}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1069
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public size()I
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 895
    :goto_0
    return v0

    .line 894
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 895
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .parameter "f"
    .parameter "l"

    .prologue
    .line 1120
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    if-eq v0, v1, :cond_0

    .line 1121
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1123
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/FastArrayList$SubList;

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    add-int/2addr v2, p1

    add-int v3, p1, p2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/collections/FastArrayList$SubList;-><init>(Lorg/apache/commons/collections/FastArrayList;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 942
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 946
    :goto_0
    return-object v0

    .line 945
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 946
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 947
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter "o"

    .prologue
    .line 932
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 936
    :goto_0
    return-object v0

    .line 935
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 936
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
