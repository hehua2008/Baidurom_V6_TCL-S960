.class public final Lcom/google/api/client/util/ClassInfo;
.super Ljava/lang/Object;
.source "ClassInfo.java"


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/api/client/util/ClassInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final CACHE_IGNORE_CASE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/api/client/util/ClassInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final ignoreCase:Z

.field private final nameToFieldInfoMap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/client/util/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/util/ClassInfo;->CACHE:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/util/ClassInfo;->CACHE_IGNORE_CASE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Z)V
    .locals 17
    .parameter
    .parameter "ignoreCase"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, srcClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v12, Ljava/util/IdentityHashMap;

    invoke-direct {v12}, Ljava/util/IdentityHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/api/client/util/ClassInfo;->clazz:Ljava/lang/Class;

    .line 163
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/api/client/util/ClassInfo;->ignoreCase:Z

    .line 164
    if-eqz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-nez v12, :cond_2

    :cond_0
    const/4 v12, 0x1

    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cannot ignore case on an enum: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 167
    new-instance v9, Ljava/util/TreeSet;

    new-instance v12, Lcom/google/api/client/util/ClassInfo$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/google/api/client/util/ClassInfo$1;-><init>(Lcom/google/api/client/util/ClassInfo;)V

    invoke-direct {v9, v12}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 173
    .local v9, nameSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    .line 174
    .local v10, superClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v10, :cond_1

    .line 175
    move/from16 v0, p2

    invoke-static {v10, v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;Z)Lcom/google/api/client/util/ClassInfo;

    move-result-object v11

    .line 176
    .local v11, superClassInfo:Lcom/google/api/client/util/ClassInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    iget-object v13, v11, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v12, v13}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 177
    iget-object v12, v11, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    invoke-virtual {v9, v12}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 180
    .end local v11           #superClassInfo:Lcom/google/api/client/util/ClassInfo;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/reflect/Field;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_8

    aget-object v4, v2, v7

    .line 181
    .local v4, field:Ljava/lang/reflect/Field;
    invoke-static {v4}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/reflect/Field;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v5

    .line 182
    .local v5, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-nez v5, :cond_3

    .line 180
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 164
    .end local v2           #arr$:[Ljava/lang/reflect/Field;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #nameSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    .end local v10           #superClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 185
    .restart local v2       #arr$:[Ljava/lang/reflect/Field;
    .restart local v4       #field:Ljava/lang/reflect/Field;
    .restart local v5       #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    .restart local v9       #nameSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    .restart local v10       #superClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {v5}, Lcom/google/api/client/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, fieldName:Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 187
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 189
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v12, v6}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/client/util/FieldInfo;

    .line 190
    .local v3, conflictingFieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-nez v3, :cond_5

    const/4 v12, 0x1

    :goto_3
    const-string v14, "two fields have the same %sname <%s>: %s and %s"

    const/4 v13, 0x4

    new-array v15, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    if-eqz p2, :cond_6

    const-string v13, "case-insensitive "

    :goto_4
    aput-object v13, v15, v16

    const/4 v13, 0x1

    aput-object v6, v15, v13

    const/4 v13, 0x2

    aput-object v4, v15, v13

    const/16 v16, 0x3

    if-nez v3, :cond_7

    const/4 v13, 0x0

    :goto_5
    aput-object v13, v15, v16

    invoke-static {v12, v14, v15}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v12, v6, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {v9, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 190
    :cond_5
    const/4 v12, 0x0

    goto :goto_3

    :cond_6
    const-string v13, ""

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Lcom/google/api/client/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v13

    goto :goto_5

    .line 199
    .end local v3           #conflictingFieldInfo:Lcom/google/api/client/util/FieldInfo;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .end local v6           #fieldName:Ljava/lang/String;
    :cond_8
    invoke-virtual {v9}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    :goto_6
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    .line 201
    return-void

    .line 199
    :cond_9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    goto :goto_6
.end method

.method public static of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/api/client/util/ClassInfo;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, underlyingClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;Z)Lcom/google/api/client/util/ClassInfo;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Class;Z)Lcom/google/api/client/util/ClassInfo;
    .locals 3
    .parameter
    .parameter "ignoreCase"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Lcom/google/api/client/util/ClassInfo;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, underlyingClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 96
    :goto_0
    return-object v1

    .line 87
    :cond_0
    if-eqz p1, :cond_2

    sget-object v0, Lcom/google/api/client/util/ClassInfo;->CACHE_IGNORE_CASE:Ljava/util/Map;

    .line 89
    .local v0, cache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Class<*>;Lcom/google/api/client/util/ClassInfo;>;"
    :goto_1
    monitor-enter v0

    .line 90
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/util/ClassInfo;

    .line 91
    .local v1, classInfo:Lcom/google/api/client/util/ClassInfo;
    if-nez v1, :cond_1

    .line 92
    new-instance v1, Lcom/google/api/client/util/ClassInfo;

    .end local v1           #classInfo:Lcom/google/api/client/util/ClassInfo;
    invoke-direct {v1, p0, p1}, Lcom/google/api/client/util/ClassInfo;-><init>(Ljava/lang/Class;Z)V

    .line 93
    .restart local v1       #classInfo:Lcom/google/api/client/util/ClassInfo;
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1
    monitor-exit v0

    goto :goto_0

    .end local v1           #classInfo:Lcom/google/api/client/util/ClassInfo;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 87
    .end local v0           #cache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Class<*>;Lcom/google/api/client/util/ClassInfo;>;"
    :cond_2
    sget-object v0, Lcom/google/api/client/util/ClassInfo;->CACHE:Ljava/util/Map;

    goto :goto_1
.end method


# virtual methods
.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .parameter "name"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v0

    .line 141
    .local v0, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/api/client/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_0
.end method

.method public getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;
    .locals 1
    .parameter "name"

    .prologue
    .line 124
    if-eqz p1, :cond_1

    .line 125
    iget-boolean v0, p0, Lcom/google/api/client/util/ClassInfo;->ignoreCase:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 128
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/FieldInfo;

    return-object v0
.end method

.method public final getIgnoreCase()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/api/client/util/ClassInfo;->ignoreCase:Z

    return v0
.end method

.method public getNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    return-object v0
.end method

.method public getUnderlyingClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/api/client/util/ClassInfo;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public isEnum()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/api/client/util/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method
