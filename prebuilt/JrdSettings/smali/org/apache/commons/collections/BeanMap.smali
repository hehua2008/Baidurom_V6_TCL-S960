.class public Lorg/apache/commons/collections/BeanMap;
.super Ljava/util/AbstractMap;
.source "BeanMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/BeanMap$MyMapEntry;
    }
.end annotation


# static fields
.field public static final NULL_ARGUMENTS:[Ljava/lang/Object;

.field public static defaultTransformers:Ljava/util/HashMap;


# instance fields
.field private transient bean:Ljava/lang/Object;

.field private transient readMethods:Ljava/util/HashMap;

.field private transient types:Ljava/util/HashMap;

.field private transient writeMethods:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/commons/collections/BeanMap;->NULL_ARGUMENTS:[Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    .line 70
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/collections/BeanMap$1;

    invoke-direct {v2}, Lorg/apache/commons/collections/BeanMap$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/collections/BeanMap$2;

    invoke-direct {v2}, Lorg/apache/commons/collections/BeanMap$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/collections/BeanMap$3;

    invoke-direct {v2}, Lorg/apache/commons/collections/BeanMap$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/collections/BeanMap$4;

    invoke-direct {v2}, Lorg/apache/commons/collections/BeanMap$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/collections/BeanMap$5;

    invoke-direct {v2}, Lorg/apache/commons/collections/BeanMap$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/collections/BeanMap$6;

    invoke-direct {v2}, Lorg/apache/commons/collections/BeanMap$6;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/collections/BeanMap$7;

    invoke-direct {v2}, Lorg/apache/commons/collections/BeanMap$7;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/collections/BeanMap$8;

    invoke-direct {v2}, Lorg/apache/commons/collections/BeanMap$8;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/BeanMap;->writeMethods:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/BeanMap;->types:Ljava/util/HashMap;

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "bean"

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/BeanMap;->writeMethods:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/BeanMap;->types:Ljava/util/HashMap;

    .line 154
    iput-object p1, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    .line 155
    invoke-direct {p0}, Lorg/apache/commons/collections/BeanMap;->initialise()V

    .line 156
    return-void
.end method

.method static access$000(Lorg/apache/commons/collections/BeanMap;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    return-object v0
.end method

.method private initialise()V
    .locals 11

    .prologue
    .line 595
    invoke-virtual {p0}, Lorg/apache/commons/collections/BeanMap;->getBean()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/BeanMap;->getBean()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 600
    .local v1, beanClass:Ljava/lang/Class;
    :try_start_0
    invoke-static {v1}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v2

    .line 601
    .local v2, beanInfo:Ljava/beans/BeanInfo;
    invoke-interface {v2}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v7

    .line 602
    .local v7, propertyDescriptors:[Ljava/beans/PropertyDescriptor;
    if-eqz v7, :cond_0

    .line 603
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v10, v7

    if-ge v4, v10, :cond_0

    .line 604
    aget-object v6, v7, v4

    .line 605
    .local v6, propertyDescriptor:Ljava/beans/PropertyDescriptor;
    if-eqz v6, :cond_4

    .line 606
    invoke-virtual {v6}, Ljava/beans/FeatureDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 607
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v8

    .line 608
    .local v8, readMethod:Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v9

    .line 609
    .local v9, writeMethod:Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v0

    .line 611
    .local v0, aType:Ljava/lang/Class;
    if-eqz v8, :cond_2

    .line 612
    iget-object v10, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :cond_2
    iget-object v10, p0, Lorg/apache/commons/collections/BeanMap;->writeMethods:Ljava/util/HashMap;

    if-eqz v10, :cond_3

    .line 615
    iget-object v10, p0, Lorg/apache/commons/collections/BeanMap;->writeMethods:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    :cond_3
    iget-object v10, p0, Lorg/apache/commons/collections/BeanMap;->types:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    .end local v0           #aType:Ljava/lang/Class;
    .end local v5           #name:Ljava/lang/String;
    .end local v8           #readMethod:Ljava/lang/reflect/Method;
    .end local v9           #writeMethod:Ljava/lang/reflect/Method;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 623
    .end local v2           #beanInfo:Ljava/beans/BeanInfo;
    .end local v4           #i:I
    .end local v6           #propertyDescriptor:Ljava/beans/PropertyDescriptor;
    .end local v7           #propertyDescriptors:[Ljava/beans/PropertyDescriptor;
    :catch_0
    move-exception v3

    .local v3, e:Ljava/beans/IntrospectionException;
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/BeanMap;->logWarn(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 263
    iget-object v2, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 273
    :goto_0
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    .line 267
    .local v0, beanClass:Ljava/lang/Class;
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not create new instance of class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public clone()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/collections/BeanMap;

    .line 191
    .local v5, newMap:Lorg/apache/commons/collections/BeanMap;
    iget-object v7, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    if-nez v7, :cond_1

    .line 234
    :cond_0
    return-object v5

    .line 197
    :cond_1
    const/4 v4, 0x0

    .line 198
    .local v4, newBean:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 200
    .local v0, beanClass:Ljava/lang/Class;
    :try_start_0
    iget-object v7, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 210
    :try_start_1
    invoke-virtual {v5, v4}, Lorg/apache/commons/collections/BeanMap;->setBean(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 221
    :try_start_2
    iget-object v7, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 222
    .local v6, readableKeys:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 223
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 224
    .local v3, key:Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/BeanMap;->getWriteMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 225
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Lorg/apache/commons/collections/BeanMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 229
    .end local v3           #key:Ljava/lang/Object;
    .end local v6           #readableKeys:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .local v2, exception:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/CloneNotSupportedException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Unable to copy bean values to cloned bean map: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 204
    .end local v2           #exception:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/CloneNotSupportedException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Unable to instantiate the underlying bean \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 212
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .restart local v2       #exception:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/CloneNotSupportedException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Unable to set bean in the cloned bean map: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->getReadMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 292
    .local v0, method:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 305
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected convertType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "newType"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 750
    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v6

    .line 752
    .local v4, types:[Ljava/lang/Class;
    :try_start_0
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 753
    .local v1, constructor:Ljava/lang/reflect/Constructor;
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v0, v5

    .line 754
    .local v0, arguments:[Ljava/lang/Object;
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 762
    .end local v0           #arguments:[Ljava/lang/Object;
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 758
    .restart local p2
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->getTypeTransformer(Ljava/lang/Class;)Lorg/apache/commons/collections/Transformer;

    move-result-object v3

    .line 759
    .local v3, transformer:Lorg/apache/commons/collections/Transformer;
    if-eqz v3, :cond_0

    .line 760
    invoke-interface {v3, p2}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method protected createWriteMethodArguments(Ljava/lang/reflect/Method;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .parameter "method"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 693
    if-eqz p2, :cond_0

    .line 694
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 695
    .local v3, types:[Ljava/lang/Class;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 696
    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 697
    .local v2, paramType:Ljava/lang/Class;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 698
    invoke-virtual {p0, v2, p2}, Lorg/apache/commons/collections/BeanMap;->convertType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 702
    .end local v2           #paramType:Ljava/lang/Class;
    .end local v3           #types:[Ljava/lang/Class;
    :cond_0
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v0, v4
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 703
    .local v0, answer:[Ljava/lang/Object;
    return-object v0

    .line 706
    .end local v0           #answer:[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/BeanMap;->logInfo(Ljava/lang/Exception;)V

    .line 707
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 710
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/BeanMap;->logInfo(Ljava/lang/Exception;)V

    .line 711
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public entryIterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 494
    invoke-virtual {p0}, Lorg/apache/commons/collections/BeanMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 495
    .local v0, iter:Ljava/util/Iterator;
    new-instance v1, Lorg/apache/commons/collections/BeanMap$11;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/collections/BeanMap$11;-><init>(Lorg/apache/commons/collections/BeanMap;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 417
    new-instance v0, Lorg/apache/commons/collections/BeanMap$9;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/BeanMap$9;-><init>(Lorg/apache/commons/collections/BeanMap;)V

    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected firePropertyChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 637
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "name"

    .prologue
    .line 324
    iget-object v2, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 325
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->getReadMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 326
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 328
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    sget-object v3, Lorg/apache/commons/collections/BeanMap;->NULL_ARGUMENTS:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 344
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 331
    .restart local v1       #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/BeanMap;->logWarn(Ljava/lang/Exception;)V

    .line 344
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    .end local v1           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 334
    .restart local v1       #method:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/BeanMap;->logWarn(Ljava/lang/Exception;)V

    goto :goto_1

    .line 337
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/BeanMap;->logWarn(Ljava/lang/Exception;)V

    goto :goto_1

    .line 340
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/BeanMap;->logWarn(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public getBean()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    return-object v0
.end method

.method protected getReadMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1
    .parameter "name"

    .prologue
    .line 568
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getReadMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .parameter "name"

    .prologue
    .line 542
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "name"

    .prologue
    .line 453
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->types:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method protected getTypeTransformer(Ljava/lang/Class;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .parameter "aType"

    .prologue
    .line 774
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method protected getWriteMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1
    .parameter "name"

    .prologue
    .line 580
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->writeMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getWriteMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .parameter "name"

    .prologue
    .line 552
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->writeMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public keyIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected logInfo(Ljava/lang/Exception;)V
    .locals 3
    .parameter "ex"

    .prologue
    .line 785
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "INFO: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method protected logWarn(Ljava/lang/Exception;)V
    .locals 3
    .parameter "ex"

    .prologue
    .line 796
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "WARN: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 798
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v5, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 360
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 361
    .local v4, oldValue:Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->getWriteMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 362
    .local v2, method:Ljava/lang/reflect/Method;
    if-nez v2, :cond_0

    .line 363
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "The bean of type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " has no property called: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 366
    :cond_0
    :try_start_0
    invoke-virtual {p0, v2, p2}, Lorg/apache/commons/collections/BeanMap;->createWriteMethodArguments(Ljava/lang/reflect/Method;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 367
    .local v0, arguments:[Ljava/lang/Object;
    iget-object v5, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    invoke-virtual {v2, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 370
    .local v3, newValue:Ljava/lang/Object;
    invoke-virtual {p0, p1, v4, v3}, Lorg/apache/commons/collections/BeanMap;->firePropertyChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    .end local v0           #arguments:[Ljava/lang/Object;
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #newValue:Ljava/lang/Object;
    .end local v4           #oldValue:Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 373
    .restart local v2       #method:Ljava/lang/reflect/Method;
    .restart local v4       #oldValue:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/BeanMap;->logInfo(Ljava/lang/Exception;)V

    .line 374
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 377
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/BeanMap;->logInfo(Ljava/lang/Exception;)V

    .line 378
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 382
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v4           #oldValue:Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public putAllWriteable(Lorg/apache/commons/collections/BeanMap;)V
    .locals 3
    .parameter "map"

    .prologue
    .line 244
    iget-object v2, p1, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 245
    .local v1, readableKeys:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    return-void

    .line 246
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 247
    .local v0, key:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/BeanMap;->getWriteMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 248
    invoke-virtual {p1, v0}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections/BeanMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected reinitialise()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 589
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->writeMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 590
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->types:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 591
    invoke-direct {p0}, Lorg/apache/commons/collections/BeanMap;->initialise()V

    .line 592
    return-void
.end method

.method public setBean(Ljava/lang/Object;)V
    .locals 0
    .parameter "newBean"

    .prologue
    .line 531
    iput-object p1, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    .line 532
    invoke-virtual {p0}, Lorg/apache/commons/collections/BeanMap;->reinitialise()V

    .line 533
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "BeanMap<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueIterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 473
    invoke-virtual {p0}, Lorg/apache/commons/collections/BeanMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 474
    .local v0, iter:Ljava/util/Iterator;
    new-instance v1, Lorg/apache/commons/collections/BeanMap$10;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/collections/BeanMap$10;-><init>(Lorg/apache/commons/collections/BeanMap;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 434
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 435
    .local v0, answer:Ljava/util/ArrayList;
    invoke-virtual {p0}, Lorg/apache/commons/collections/BeanMap;->valueIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 438
    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 436
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
