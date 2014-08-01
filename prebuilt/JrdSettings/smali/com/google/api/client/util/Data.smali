.class public Lcom/google/api/client/util/Data;
.super Ljava/lang/Object;
.source "Data.java"


# static fields
.field public static final NULL_BIG_DECIMAL:Ljava/math/BigDecimal;

.field public static final NULL_BIG_INTEGER:Ljava/math/BigInteger;

.field public static final NULL_BOOLEAN:Ljava/lang/Boolean;

.field public static final NULL_BYTE:Ljava/lang/Byte;

.field private static final NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final NULL_CHARACTER:Ljava/lang/Character;

.field public static final NULL_DATE_TIME:Lcom/google/api/client/util/DateTime;

.field public static final NULL_DOUBLE:Ljava/lang/Double;

.field public static final NULL_FLOAT:Ljava/lang/Float;

.field public static final NULL_INTEGER:Ljava/lang/Integer;

.field public static final NULL_LONG:Ljava/lang/Long;

.field public static final NULL_SHORT:Ljava/lang/Short;

.field public static final NULL_STRING:Ljava/lang/String;

.field public static final NULL_UNSIGNED_INTEGER:Lcom/google/common/primitives/UnsignedInteger;

.field public static final NULL_UNSIGNED_LONG:Lcom/google/common/primitives/UnsignedLong;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 51
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    .line 54
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_STRING:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, v3}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_CHARACTER:Ljava/lang/Character;

    .line 60
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v3}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_BYTE:Ljava/lang/Byte;

    .line 63
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v3}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_SHORT:Ljava/lang/Short;

    .line 66
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_INTEGER:Ljava/lang/Integer;

    .line 69
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_FLOAT:Ljava/lang/Float;

    .line 72
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_LONG:Ljava/lang/Long;

    .line 75
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_DOUBLE:Ljava/lang/Double;

    .line 78
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_BIG_INTEGER:Ljava/math/BigInteger;

    .line 81
    invoke-static {v3}, Lcom/google/common/primitives/UnsignedInteger;->asUnsigned(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_UNSIGNED_INTEGER:Lcom/google/common/primitives/UnsignedInteger;

    .line 84
    invoke-static {v4, v5}, Lcom/google/common/primitives/UnsignedLong;->asUnsigned(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_UNSIGNED_LONG:Lcom/google/common/primitives/UnsignedLong;

    .line 87
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_BIG_DECIMAL:Ljava/math/BigDecimal;

    .line 90
    new-instance v0, Lcom/google/api/client/util/DateTime;

    invoke-direct {v0, v4, v5}, Lcom/google/api/client/util/DateTime;-><init>(J)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_DATE_TIME:Lcom/google/api/client/util/DateTime;

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_CHARACTER:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_BYTE:Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_SHORT:Ljava/lang/Short;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_INTEGER:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_FLOAT:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_LONG:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_DOUBLE:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_BIG_INTEGER:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/google/common/primitives/UnsignedInteger;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_UNSIGNED_INTEGER:Lcom/google/common/primitives/UnsignedInteger;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/google/common/primitives/UnsignedLong;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_UNSIGNED_LONG:Lcom/google/common/primitives/UnsignedLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_BIG_DECIMAL:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/google/api/client/util/DateTime;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_DATE_TIME:Lcom/google/api/client/util/DateTime;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, data:Ljava/lang/Object;,"TT;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, p0

    .line 235
    .local v1, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 222
    .end local v1           #dataClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    instance-of v2, p0, Lcom/google/api/client/util/GenericData;

    if-eqz v2, :cond_2

    .line 223
    check-cast p0, Lcom/google/api/client/util/GenericData;

    .end local p0           #data:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    goto :goto_0

    .line 226
    .restart local p0       #data:Ljava/lang/Object;,"TT;"
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 227
    .restart local v1       #dataClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 228
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 234
    :goto_1
    invoke-static {p0, v0}, Lcom/google/api/client/util/Data;->deepCopy(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 229
    :cond_3
    instance-of v2, p0, Lcom/google/api/client/util/ArrayMap;

    if-eqz v2, :cond_4

    move-object v2, p0

    .line 230
    check-cast v2, Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v2}, Lcom/google/api/client/util/ArrayMap;->clone()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    .local v0, copy:Lcom/google/api/client/util/ArrayMap;,"TT;"
    goto :goto_1

    .line 232
    .end local v0           #copy:Lcom/google/api/client/util/ArrayMap;,"TT;"
    :cond_4
    invoke-static {v1}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .local v0, copy:Ljava/lang/Object;,"TT;"
    goto :goto_1
.end method

.method public static deepCopy(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 24
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 268
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 269
    .local v15, srcClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v15}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v22

    if-nez v22, :cond_0

    const/16 v22, 0x1

    :goto_0
    invoke-static/range {v22 .. v22}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 270
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    if-ne v15, v0, :cond_1

    const/16 v22, 0x1

    :goto_1
    invoke-static/range {v22 .. v22}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 271
    invoke-virtual {v15}, Ljava/lang/Class;->isArray()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 273
    invoke-static/range {p0 .. p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v22

    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/16 v22, 0x1

    :goto_2
    invoke-static/range {v22 .. v22}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 274
    const/4 v11, 0x0

    .line 275
    .local v11, index:I
    invoke-static/range {p0 .. p0}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .line 276
    .local v21, value:Ljava/lang/Object;
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .local v12, index:I
    invoke-static/range {v21 .. v21}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v11, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto :goto_3

    .line 269
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    .end local v21           #value:Ljava/lang/Object;
    :cond_0
    const/16 v22, 0x0

    goto :goto_0

    .line 270
    :cond_1
    const/16 v22, 0x0

    goto :goto_1

    .line 273
    :cond_2
    const/16 v22, 0x0

    goto :goto_2

    .line 278
    :cond_3
    const-class v22, Ljava/util/Collection;

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v16, p0

    .line 281
    check-cast v16, Ljava/util/Collection;

    .line 282
    .local v16, srcCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    const-class v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_4

    move-object/from16 v3, p1

    .line 284
    check-cast v3, Ljava/util/ArrayList;

    .line 285
    .local v3, destArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .end local v3           #destArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_4
    move-object/from16 v4, p1

    .line 288
    check-cast v4, Ljava/util/Collection;

    .line 289
    .local v4, destCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .line 290
    .local v20, srcValue:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 294
    .end local v4           #destCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v16           #srcCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v20           #srcValue:Ljava/lang/Object;
    :cond_5
    const-class v22, Lcom/google/api/client/util/GenericData;

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    .line 295
    .local v13, isGenericData:Z
    if-nez v13, :cond_6

    const-class v22, Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 296
    :cond_6
    if-eqz v13, :cond_9

    move-object/from16 v22, p0

    check-cast v22, Lcom/google/api/client/util/GenericData;

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    .line 298
    .local v2, classInfo:Lcom/google/api/client/util/ClassInfo;
    :goto_5
    iget-object v0, v2, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 299
    .local v8, fieldName:Ljava/lang/String;
    invoke-virtual {v2, v8}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v7

    .line 301
    .local v7, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    invoke-virtual {v7}, Lcom/google/api/client/util/FieldInfo;->isFinal()Z

    move-result v22

    if-nez v22, :cond_7

    .line 303
    if-eqz v13, :cond_8

    invoke-virtual {v7}, Lcom/google/api/client/util/FieldInfo;->isPrimitive()Z

    move-result v22

    if-nez v22, :cond_7

    .line 304
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 305
    .restart local v20       #srcValue:Ljava/lang/Object;
    if-eqz v20, :cond_7

    .line 306
    invoke-static/range {v20 .. v20}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 296
    .end local v2           #classInfo:Lcom/google/api/client/util/ClassInfo;
    .end local v7           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .end local v8           #fieldName:Ljava/lang/String;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v20           #srcValue:Ljava/lang/Object;
    :cond_9
    invoke-static {v15}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v2

    goto :goto_5

    .line 311
    :cond_a
    const-class v22, Lcom/google/api/client/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_b

    move-object/from16 v5, p1

    .line 314
    check-cast v5, Lcom/google/api/client/util/ArrayMap;

    .local v5, destMap:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object/from16 v18, p0

    .line 316
    check-cast v18, Lcom/google/api/client/util/ArrayMap;

    .line 317
    .local v18, srcMap:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/google/api/client/util/ArrayMap;->size()I

    move-result v14

    .line 318
    .local v14, size:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_7
    if-ge v9, v14, :cond_c

    .line 319
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/google/api/client/util/ArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v20

    .line 320
    .restart local v20       #srcValue:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v9, v0}, Lcom/google/api/client/util/ArrayMap;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 318
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .end local v5           #destMap:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v9           #i:I
    .end local v14           #size:I
    .end local v18           #srcMap:Lcom/google/api/client/util/ArrayMap;,"Lcom/google/api/client/util/ArrayMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v20           #srcValue:Ljava/lang/Object;
    :cond_b
    move-object/from16 v6, p1

    .line 325
    check-cast v6, Ljava/util/Map;

    .local v6, destMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v19, p0

    .line 327
    check-cast v19, Ljava/util/Map;

    .line 328
    .local v19, srcMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 329
    .local v17, srcEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 333
    .end local v6           #destMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #isGenericData:Z
    .end local v17           #srcEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19           #srcMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_c
    return-void
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 166
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrimitive(Ljava/lang/reflect/Type;)Z
    .locals 3
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 344
    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_0

    .line 345
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .end local p0
    invoke-static {p0}, Lcom/google/api/client/util/Types;->getBound(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 347
    .restart local p0
    :cond_0
    instance-of v2, p0, Ljava/lang/Class;

    if-nez v2, :cond_2

    .line 351
    :cond_1
    :goto_0
    return v1

    :cond_2
    move-object v0, p0

    .line 350
    check-cast v0, Ljava/lang/Class;

    .line 351
    .local v0, typeClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_3

    const-class v2, Ljava/lang/Character;

    if-eq v0, v2, :cond_3

    const-class v2, Ljava/lang/String;

    if-eq v0, v2, :cond_3

    const-class v2, Ljava/lang/Integer;

    if-eq v0, v2, :cond_3

    const-class v2, Ljava/lang/Long;

    if-eq v0, v2, :cond_3

    const-class v2, Ljava/lang/Short;

    if-eq v0, v2, :cond_3

    const-class v2, Ljava/lang/Byte;

    if-eq v0, v2, :cond_3

    const-class v2, Ljava/lang/Float;

    if-eq v0, v2, :cond_3

    const-class v2, Ljava/lang/Double;

    if-eq v0, v2, :cond_3

    const-class v2, Ljava/math/BigInteger;

    if-eq v0, v2, :cond_3

    const-class v2, Lcom/google/common/primitives/UnsignedInteger;

    if-eq v0, v2, :cond_3

    const-class v2, Lcom/google/common/primitives/UnsignedLong;

    if-eq v0, v2, :cond_3

    const-class v2, Ljava/math/BigDecimal;

    if-eq v0, v2, :cond_3

    const-class v2, Lcom/google/api/client/util/DateTime;

    if-eq v0, v2, :cond_3

    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isValueOfPrimitiveType(Ljava/lang/Object;)Z
    .locals 1
    .parameter "fieldValue"

    .prologue
    .line 364
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mapOf(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 192
    :cond_1
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_2

    move-object v0, p0

    .line 194
    check-cast v0, Ljava/util/Map;

    .line 195
    .local v0, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 197
    .end local v0           #result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    new-instance v0, Lcom/google/api/client/util/DataMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/util/DataMap;-><init>(Ljava/lang/Object;Z)V

    .line 198
    .restart local v0       #result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public static newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_0

    .line 473
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .end local p0
    invoke-static {p0}, Lcom/google/api/client/util/Types;->getBound(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 475
    .restart local p0
    :cond_0
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    .line 476
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 478
    .restart local p0
    :cond_1
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_3

    move-object v2, p0

    check-cast v2, Ljava/lang/Class;

    move-object v0, v2

    .line 479
    .local v0, collectionClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    if-eqz p0, :cond_2

    instance-of v2, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v2, :cond_2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 481
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 491
    :goto_1
    return-object v1

    .line 478
    .end local v0           #collectionClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 483
    .restart local v0       #collectionClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4
    const-class v2, Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 484
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    .line 486
    :cond_5
    const-class v2, Ljava/util/TreeSet;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 487
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_1

    .line 490
    :cond_6
    invoke-static {v0}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 491
    .local v1, result:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    goto :goto_1
.end method

.method public static newMapInstance(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, mapClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    const-class v1, Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    :cond_0
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    .line 518
    :goto_0
    return-object v0

    .line 513
    :cond_1
    const-class v1, Ljava/util/TreeMap;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 514
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    .line 517
    :cond_2
    invoke-static {p0}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 518
    .local v0, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public static nullOf(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, objClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v6, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 123
    .local v4, result:Ljava/lang/Object;
    if-nez v4, :cond_4

    .line 124
    sget-object v7, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v7

    .line 125
    :try_start_0
    sget-object v6, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 126
    if-nez v4, :cond_3

    .line 127
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, dims:I
    move-object v0, p0

    .line 132
    .local v0, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 133
    add-int/lit8 v1, v1, 0x1

    .line 134
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-nez v6, :cond_0

    .line 135
    new-array v6, v1, [I

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    .line 148
    .end local v0           #componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #dims:I
    .end local v4           #result:Ljava/lang/Object;
    :goto_0
    sget-object v6, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    .line 150
    :goto_1
    monitor-exit v7

    .line 154
    .local v5, tResult:Ljava/lang/Object;,"TT;"
    :goto_2
    return-object v5

    .line 136
    .end local v5           #tResult:Ljava/lang/Object;,"TT;"
    .restart local v4       #result:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 138
    invoke-static {p0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v3

    .line 139
    .local v3, fieldInfo:Lcom/google/api/client/util/FieldInfo;
    const-string v6, "enum missing constant with @NullValue annotation: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-static {v3, v6, v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {v3}, Lcom/google/api/client/util/FieldInfo;->enumValue()Ljava/lang/Enum;

    move-result-object v2

    .line 143
    .local v2, e:Ljava/lang/Enum;
    move-object v4, v2

    .line 144
    .local v4, result:Ljava/lang/Enum;
    goto :goto_0

    .line 146
    .end local v2           #e:Ljava/lang/Enum;
    .end local v3           #fieldInfo:Lcom/google/api/client/util/FieldInfo;
    .local v4, result:Ljava/lang/Object;
    :cond_2
    invoke-static {p0}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 150
    .end local v4           #result:Ljava/lang/Object;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v4       #result:Ljava/lang/Object;
    :cond_3
    move-object v5, v4

    goto :goto_1

    :cond_4
    move-object v5, v4

    goto :goto_2
.end method

.method public static parsePrimitiveValue(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "type"
    .parameter "stringValue"

    .prologue
    .line 396
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Ljava/lang/Class;

    move-object v0, v2

    .line 397
    .local v0, primitiveClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    if-eqz p0, :cond_0

    if-eqz v0, :cond_1a

    .line 398
    :cond_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    move-object v1, p1

    .line 448
    :goto_1
    return-object v1

    .line 396
    .end local v0           #primitiveClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 402
    .restart local v0       #primitiveClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    const-class v2, Ljava/lang/Character;

    if-eq v0, v2, :cond_4

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_6

    .line 403
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    .line 404
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected type Character/char but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 407
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    goto :goto_1

    .line 409
    :cond_6
    const-class v2, Ljava/lang/Boolean;

    if-eq v0, v2, :cond_7

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_8

    .line 410
    :cond_7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    .line 412
    :cond_8
    const-class v2, Ljava/lang/Byte;

    if-eq v0, v2, :cond_9

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_a

    .line 413
    :cond_9
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_1

    .line 415
    :cond_a
    const-class v2, Ljava/lang/Short;

    if-eq v0, v2, :cond_b

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_c

    .line 416
    :cond_b
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    goto :goto_1

    .line 418
    :cond_c
    const-class v2, Ljava/lang/Integer;

    if-eq v0, v2, :cond_d

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_e

    .line 419
    :cond_d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 421
    :cond_e
    const-class v2, Ljava/lang/Long;

    if-eq v0, v2, :cond_f

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_10

    .line 422
    :cond_f
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    .line 424
    :cond_10
    const-class v2, Ljava/lang/Float;

    if-eq v0, v2, :cond_11

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_12

    .line 425
    :cond_11
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    goto/16 :goto_1

    .line 427
    :cond_12
    const-class v2, Ljava/lang/Double;

    if-eq v0, v2, :cond_13

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_14

    .line 428
    :cond_13
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    goto/16 :goto_1

    .line 430
    :cond_14
    const-class v2, Lcom/google/api/client/util/DateTime;

    if-ne v0, v2, :cond_15

    .line 431
    invoke-static {p1}, Lcom/google/api/client/util/DateTime;->parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;

    move-result-object v1

    goto/16 :goto_1

    .line 433
    :cond_15
    const-class v2, Ljava/math/BigInteger;

    if-ne v0, v2, :cond_16

    .line 434
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 436
    :cond_16
    const-class v2, Lcom/google/common/primitives/UnsignedInteger;

    if-ne v0, v2, :cond_17

    .line 437
    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInteger;->valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v1

    goto/16 :goto_1

    .line 439
    :cond_17
    const-class v2, Lcom/google/common/primitives/UnsignedLong;

    if-ne v0, v2, :cond_18

    .line 440
    invoke-static {p1}, Lcom/google/common/primitives/UnsignedLong;->valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v1

    goto/16 :goto_1

    .line 442
    :cond_18
    const-class v2, Ljava/math/BigDecimal;

    if-ne v0, v2, :cond_19

    .line 443
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 445
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 447
    invoke-static {v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/util/FieldInfo;->enumValue()Ljava/lang/Enum;

    move-result-object v1

    .line 448
    .local v1, result:Ljava/lang/Enum;
    goto/16 :goto_1

    .line 451
    .end local v1           #result:Ljava/lang/Enum;
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected primitive class, but got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 534
    .local p0, context:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Type;>;"
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_0

    .line 535
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .end local p1
    invoke-static {p1}, Lcom/google/api/client/util/Types;->getBound(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 538
    .restart local p1
    :cond_0
    :goto_0
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 540
    check-cast v1, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, v1}, Lcom/google/api/client/util/Types;->resolveTypeVariable(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 541
    .local v0, resolved:Ljava/lang/reflect/Type;
    if-eqz v0, :cond_1

    .line 542
    move-object p1, v0

    .line 545
    :cond_1
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    .line 546
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .end local p1
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object p1, v1, v2

    .restart local p1
    goto :goto_0

    .line 550
    .end local v0           #resolved:Ljava/lang/reflect/Type;
    :cond_2
    return-object p1
.end method
