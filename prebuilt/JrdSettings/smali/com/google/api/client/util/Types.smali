.class public Lcom/google/api/client/util/Types;
.super Ljava/lang/Object;
.source "Types.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    return-void
.end method

.method private static getActualParameterAtPosition(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;
    .locals 5
    .parameter "type"
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, superClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcom/google/api/client/util/Types;->getSuperParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 329
    .local v0, parameterizedType:Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v2, v3, p2

    .line 332
    .local v2, valueType:Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_0

    .line 333
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    invoke-static {v4, v3}, Lcom/google/api/client/util/Types;->resolveTypeVariable(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 334
    .local v1, resolve:Ljava/lang/reflect/Type;
    if-eqz v1, :cond_0

    .line 338
    .end local v1           #resolve:Ljava/lang/reflect/Type;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public static getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .parameter "array"

    .prologue
    .line 187
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    check-cast p0, Ljava/lang/Class;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBound(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;
    .locals 3
    .parameter "wildcardType"

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 210
    .local v0, lowerBounds:[Ljava/lang/reflect/Type;
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 211
    aget-object v1, v0, v2

    .line 213
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public static getIterableParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2
    .parameter "iterableType"

    .prologue
    .line 309
    const-class v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/api/client/util/Types;->getActualParameterAtPosition(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2
    .parameter "mapType"

    .prologue
    .line 324
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/api/client/util/Types;->getActualParameterAtPosition(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 5
    .parameter
    .parameter "componentType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, context:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Type;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 279
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    .line 280
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .end local p1
    invoke-static {p0, p1}, Lcom/google/api/client/util/Types;->resolveTypeVariable(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 282
    .restart local p1
    :cond_0
    instance-of v1, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_1

    .line 283
    invoke-static {p1}, Lcom/google/api/client/util/Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 284
    .local v0, raw:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 294
    .end local v0           #raw:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local p1
    :goto_0
    return-object p1

    .line 286
    .restart local p1
    :cond_1
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 287
    check-cast p1, Ljava/lang/Class;

    goto :goto_0

    .line 289
    :cond_2
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_3

    .line 290
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1
    invoke-static {p1}, Lcom/google/api/client/util/Types;->getRawClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 292
    .restart local p1
    :cond_3
    if-nez p1, :cond_4

    move v1, v2

    :goto_1
    const-string v4, "wildcard type is not supported: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v4, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 294
    const-class p1, Ljava/lang/Object;

    goto :goto_0

    :cond_4
    move v1, v3

    .line 292
    goto :goto_1
.end method

.method public static getRawClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;
    .locals 1
    .parameter "parameterType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 199
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static getSuperParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/ParameterizedType;
    .locals 8
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, superClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    instance-of v7, p0, Ljava/lang/Class;

    if-nez v7, :cond_0

    instance-of v7, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_6

    .line 60
    :cond_0
    :goto_0
    if-eqz p0, :cond_6

    const-class v7, Ljava/lang/Object;

    if-eq p0, v7, :cond_6

    .line 62
    instance-of v7, p0, Ljava/lang/Class;

    if-eqz v7, :cond_2

    move-object v6, p0

    .line 64
    check-cast v6, Ljava/lang/Class;

    .line 88
    .local v6, rawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 89
    goto :goto_0

    .end local v6           #rawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    move-object v5, p0

    .line 67
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 68
    .local v5, parameterizedType:Ljava/lang/reflect/ParameterizedType;
    invoke-static {v5}, Lcom/google/api/client/util/Types;->getRawClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v6

    .line 70
    .restart local v6       #rawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-ne v6, p1, :cond_3

    .line 91
    .end local v5           #parameterizedType:Ljava/lang/reflect/ParameterizedType;
    .end local v6           #rawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    return-object v5

    .line 74
    .restart local v5       #parameterizedType:Ljava/lang/reflect/ParameterizedType;
    .restart local v6       #rawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 75
    invoke-virtual {v6}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Type;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v4, :cond_1

    aget-object v3, v0, v1

    .line 77
    .local v3, interfaceType:Ljava/lang/reflect/Type;
    instance-of v7, v3, Ljava/lang/Class;

    if-eqz v7, :cond_4

    move-object v7, v3

    check-cast v7, Ljava/lang/Class;

    move-object v2, v7

    .line 80
    .local v2, interfaceClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 81
    move-object p0, v3

    .line 82
    goto :goto_0

    .end local v2           #interfaceClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4
    move-object v7, v3

    .line 77
    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v7}, Lcom/google/api/client/util/Types;->getRawClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_3

    .line 75
    .restart local v2       #interfaceClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 91
    .end local v0           #arr$:[Ljava/lang/reflect/Type;
    .end local v1           #i$:I
    .end local v2           #interfaceClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #interfaceType:Ljava/lang/reflect/Type;
    .end local v4           #len$:I
    .end local v5           #parameterizedType:Ljava/lang/reflect/ParameterizedType;
    .end local v6           #rawType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static handleExceptionForNewInstance(Ljava/lang/Exception;Ljava/lang/Class;)Ljava/lang/IllegalArgumentException;
    .locals 8
    .parameter "e"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/IllegalArgumentException;"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unable to create new instance of class "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    .local v1, buf:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v5, reasons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 132
    const-string v6, "because it is an array"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :goto_0
    const/4 v0, 0x0

    .line 159
    .local v0, and:Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 160
    .local v4, reason:Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 161
    const-string v6, " and"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :goto_2
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 133
    .end local v0           #and:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #reason:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 134
    const-string v6, "because it is primitive"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_1
    const-class v6, Ljava/lang/Void;

    if-ne p1, v6, :cond_2

    .line 136
    const-string v6, "because it is void"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 139
    const-string v6, "because it is an interface"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_3
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 144
    const-string v6, "because it is not static"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 148
    const-string v6, "possibly because it is not public"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 141
    const-string v6, "because it is abstract"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 151
    :cond_6
    const/4 v6, 0x0

    :try_start_0
    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, e1:Ljava/lang/NoSuchMethodException;
    const-string v6, "because it has no accessible default constructor"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 163
    .end local v2           #e1:Ljava/lang/NoSuchMethodException;
    .restart local v0       #and:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #reason:Ljava/lang/String;
    :cond_7
    const/4 v0, 0x1

    goto :goto_2

    .line 167
    .end local v4           #reason:Ljava/lang/String;
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
.end method

.method public static isArray(Ljava/lang/reflect/Type;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 172
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Class;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

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

.method public static isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, classToCheck:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, anotherClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

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

.method public static iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 6
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 354
    instance-of v2, p0, Ljava/lang/Iterable;

    if-eqz v2, :cond_0

    .line 355
    check-cast p0, Ljava/lang/Iterable;

    .line 363
    .end local p0
    .local v0, subClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local v1, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object p0

    .line 357
    .end local v0           #subClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 358
    .restart local v1       #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    const-string v3, "not an array or Iterable: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 359
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 360
    .restart local v0       #subClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 361
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 363
    .restart local p0
    :cond_1
    new-instance v2, Lcom/google/api/client/util/Types$1;

    invoke-direct {v2, p0}, Lcom/google/api/client/util/Types$1;-><init>(Ljava/lang/Object;)V

    move-object p0, v2

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-static {v0, p0}, Lcom/google/api/client/util/Types;->handleExceptionForNewInstance(Ljava/lang/Exception;Ljava/lang/Class;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 121
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/InstantiationException;
    invoke-static {v0, p0}, Lcom/google/api/client/util/Types;->handleExceptionForNewInstance(Ljava/lang/Exception;Ljava/lang/Class;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public static resolveTypeVariable(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, context:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Type;>;"
    .local p1, typeVariable:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    .line 234
    .local v1, genericDeclaration:Ljava/lang/reflect/GenericDeclaration;
    instance-of v9, v1, Ljava/lang/Class;

    if-eqz v9, :cond_4

    move-object v4, v1

    .line 235
    check-cast v4, Ljava/lang/Class;

    .line 237
    .local v4, rawGenericDeclaration:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 238
    .local v0, contextIndex:I
    const/4 v3, 0x0

    .line 239
    .local v3, parameterizedType:Ljava/lang/reflect/ParameterizedType;
    :goto_0
    if-nez v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 240
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Type;

    invoke-static {v9, v4}, Lcom/google/api/client/util/Types;->getSuperParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v3

    goto :goto_0

    .line 243
    :cond_0
    if-eqz v3, :cond_4

    .line 245
    invoke-interface {v1}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v8

    .line 246
    .local v8, typeParameters:[Ljava/lang/reflect/TypeVariable;,"[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v2, 0x0

    .line 247
    .local v2, index:I
    :goto_1
    array-length v9, v8

    if-ge v2, v9, :cond_1

    .line 248
    aget-object v7, v8, v2

    .line 249
    .local v7, typeParameter:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 254
    .end local v7           #typeParameter:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    :cond_1
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v9

    aget-object v6, v9, v2

    .line 255
    .local v6, result:Ljava/lang/reflect/Type;
    instance-of v9, v6, Ljava/lang/reflect/TypeVariable;

    if-eqz v9, :cond_3

    move-object v9, v6

    .line 257
    check-cast v9, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, v9}, Lcom/google/api/client/util/Types;->resolveTypeVariable(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 258
    .local v5, resolve:Ljava/lang/reflect/Type;
    if-eqz v5, :cond_3

    .line 266
    .end local v0           #contextIndex:I
    .end local v2           #index:I
    .end local v3           #parameterizedType:Ljava/lang/reflect/ParameterizedType;
    .end local v4           #rawGenericDeclaration:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #resolve:Ljava/lang/reflect/Type;
    .end local v6           #result:Ljava/lang/reflect/Type;
    .end local v8           #typeParameters:[Ljava/lang/reflect/TypeVariable;,"[Ljava/lang/reflect/TypeVariable<*>;"
    :goto_2
    return-object v5

    .line 247
    .restart local v0       #contextIndex:I
    .restart local v2       #index:I
    .restart local v3       #parameterizedType:Ljava/lang/reflect/ParameterizedType;
    .restart local v4       #rawGenericDeclaration:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v7       #typeParameter:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v8       #typeParameters:[Ljava/lang/reflect/TypeVariable;,"[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v7           #typeParameter:Ljava/lang/reflect/TypeVariable;,"Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v6       #result:Ljava/lang/reflect/Type;
    :cond_3
    move-object v5, v6

    .line 263
    goto :goto_2

    .line 266
    .end local v0           #contextIndex:I
    .end local v2           #index:I
    .end local v3           #parameterizedType:Ljava/lang/reflect/ParameterizedType;
    .end local v4           #rawGenericDeclaration:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #result:Ljava/lang/reflect/Type;
    .end local v8           #typeParameters:[Ljava/lang/reflect/TypeVariable;,"[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static toArray(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .local p1, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 400
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 401
    .local v0, array:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 402
    .local v2, index:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 403
    .local v4, value:Ljava/lang/Object;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    invoke-static {v0, v2, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_0

    .line 407
    .end local v0           #array:Ljava/lang/Object;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #index:I
    .end local v4           #value:Ljava/lang/Object;
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-interface {p0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method
