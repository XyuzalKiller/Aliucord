.class public Ld0/e0/p/d/m0/m/f$d;
.super Ld0/e0/p/d/m0/m/f$e;
.source "LockBasedStorageManager.java"

# interfaces
.implements Ld0/e0/p/d/m0/m/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/e0/p/d/m0/m/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ld0/e0/p/d/m0/m/f$e<",
        "TK;TV;>;",
        "Ld0/e0/p/d/m0/m/a<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ld0/e0/p/d/m0/m/f;Ljava/util/concurrent/ConcurrentMap;Ld0/e0/p/d/m0/m/f$a;)V
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ld0/e0/p/d/m0/m/f$e;-><init>(Ld0/e0/p/d/m0/m/f;Ljava/util/concurrent/ConcurrentMap;Ld0/e0/p/d/m0/m/f$a;)V

    return-void
.end method

.method public static synthetic a(I)V
    .locals 8

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :cond_6
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v2, 0x2

    if-eq p0, v0, :cond_d

    const/4 v3, 0x3

    goto :goto_e

    :cond_d
    const/4 v3, 0x2

    :goto_e
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p0, v5, :cond_27

    if-eq p0, v2, :cond_22

    if-eq p0, v0, :cond_1f

    const-string v7, "storageManager"

    aput-object v7, v3, v6

    goto :goto_2b

    :cond_1f
    aput-object v4, v3, v6

    goto :goto_2b

    :cond_22
    const-string v7, "computation"

    aput-object v7, v3, v6

    goto :goto_2b

    :cond_27
    const-string v7, "map"

    aput-object v7, v3, v6

    :goto_2b
    const-string v6, "computeIfAbsent"

    if-eq p0, v0, :cond_32

    aput-object v4, v3, v5

    goto :goto_34

    :cond_32
    aput-object v6, v3, v5

    :goto_34
    if-eq p0, v2, :cond_3d

    if-eq p0, v0, :cond_3f

    const-string v4, "<init>"

    aput-object v4, v3, v2

    goto :goto_3f

    :cond_3d
    aput-object v6, v3, v2

    :cond_3f
    :goto_3f
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_4b

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_50

    :cond_4b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_50
    throw p0
.end method


# virtual methods
.method public computeIfAbsent(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lkotlin/jvm/functions/Function0<",
            "+TV;>;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_f

    .line 1
    invoke-super {p0, p1, p2}, Ld0/e0/p/d/m0/m/f$e;->computeIfAbsent(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    return-object p1

    :cond_a
    const/4 p1, 0x3

    .line 2
    invoke-static {p1}, Ld0/e0/p/d/m0/m/f$d;->a(I)V

    throw v0

    :cond_f
    const/4 p1, 0x2

    .line 3
    invoke-static {p1}, Ld0/e0/p/d/m0/m/f$d;->a(I)V

    throw v0
.end method
