.class public Ld0/e0/p/d/m0/k/k$d;
.super Ljava/lang/Object;
.source "OverridingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/e0/p/d/m0/k/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld0/e0/p/d/m0/k/k$d$a;
    }
.end annotation


# static fields
.field public static final a:Ld0/e0/p/d/m0/k/k$d;


# instance fields
.field public final b:Ld0/e0/p/d/m0/k/k$d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ld0/e0/p/d/m0/k/k$d;

    sget-object v1, Ld0/e0/p/d/m0/k/k$d$a;->j:Ld0/e0/p/d/m0/k/k$d$a;

    const-string v2, "SUCCESS"

    invoke-direct {v0, v1, v2}, Ld0/e0/p/d/m0/k/k$d;-><init>(Ld0/e0/p/d/m0/k/k$d$a;Ljava/lang/String;)V

    sput-object v0, Ld0/e0/p/d/m0/k/k$d;->a:Ld0/e0/p/d/m0/k/k$d;

    return-void
.end method

.method public constructor <init>(Ld0/e0/p/d/m0/k/k$d$a;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    if-eqz p2, :cond_b

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld0/e0/p/d/m0/k/k$d;->b:Ld0/e0/p/d/m0/k/k$d$a;

    return-void

    :cond_b
    const/4 p1, 0x4

    .line 3
    invoke-static {p1}, Ld0/e0/p/d/m0/k/k$d;->a(I)V

    throw v0

    :cond_10
    const/4 p1, 0x3

    invoke-static {p1}, Ld0/e0/p/d/m0/k/k$d;->a(I)V

    throw v0
.end method

.method public static synthetic a(I)V
    .locals 10

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p0, v3, :cond_f

    if-eq p0, v2, :cond_f

    if-eq p0, v1, :cond_f

    if-eq p0, v0, :cond_f

    const-string v4, "@NotNull method %s.%s must not return null"

    goto :goto_11

    :cond_f
    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_11
    if-eq p0, v3, :cond_1b

    if-eq p0, v2, :cond_1b

    if-eq p0, v1, :cond_1b

    if-eq p0, v0, :cond_1b

    const/4 v5, 0x2

    goto :goto_1c

    :cond_1b
    const/4 v5, 0x3

    :goto_1c
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "success"

    const-string v7, "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo"

    const/4 v8, 0x0

    if-eq p0, v3, :cond_31

    if-eq p0, v2, :cond_31

    if-eq p0, v1, :cond_2e

    if-eq p0, v0, :cond_31

    aput-object v7, v5, v8

    goto :goto_35

    :cond_2e
    aput-object v6, v5, v8

    goto :goto_35

    :cond_31
    const-string v9, "debugMessage"

    aput-object v9, v5, v8

    :goto_35
    packed-switch p0, :pswitch_data_76

    aput-object v6, v5, v3

    goto :goto_47

    :pswitch_3b
    const-string v6, "getDebugMessage"

    aput-object v6, v5, v3

    goto :goto_47

    :pswitch_40
    const-string v6, "getResult"

    aput-object v6, v5, v3

    goto :goto_47

    :pswitch_45
    aput-object v7, v5, v3

    :goto_47
    if-eq p0, v3, :cond_5a

    if-eq p0, v2, :cond_55

    if-eq p0, v1, :cond_50

    if-eq p0, v0, :cond_50

    goto :goto_5e

    :cond_50
    const-string v6, "<init>"

    aput-object v6, v5, v2

    goto :goto_5e

    :cond_55
    const-string v6, "conflict"

    aput-object v6, v5, v2

    goto :goto_5e

    :cond_5a
    const-string v6, "incompatible"

    aput-object v6, v5, v2

    :goto_5e
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_70

    if-eq p0, v2, :cond_70

    if-eq p0, v1, :cond_70

    if-eq p0, v0, :cond_70

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_75

    :cond_70
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_75
    throw p0

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_40
        :pswitch_3b
    .end packed-switch
.end method

.method public static conflict(Ljava/lang/String;)Ld0/e0/p/d/m0/k/k$d;
    .locals 2

    if-eqz p0, :cond_a

    .line 1
    new-instance v0, Ld0/e0/p/d/m0/k/k$d;

    sget-object v1, Ld0/e0/p/d/m0/k/k$d$a;->l:Ld0/e0/p/d/m0/k/k$d$a;

    invoke-direct {v0, v1, p0}, Ld0/e0/p/d/m0/k/k$d;-><init>(Ld0/e0/p/d/m0/k/k$d$a;Ljava/lang/String;)V

    return-object v0

    :cond_a
    const/4 p0, 0x2

    .line 2
    invoke-static {p0}, Ld0/e0/p/d/m0/k/k$d;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static incompatible(Ljava/lang/String;)Ld0/e0/p/d/m0/k/k$d;
    .locals 2

    if-eqz p0, :cond_a

    .line 1
    new-instance v0, Ld0/e0/p/d/m0/k/k$d;

    sget-object v1, Ld0/e0/p/d/m0/k/k$d$a;->k:Ld0/e0/p/d/m0/k/k$d$a;

    invoke-direct {v0, v1, p0}, Ld0/e0/p/d/m0/k/k$d;-><init>(Ld0/e0/p/d/m0/k/k$d$a;Ljava/lang/String;)V

    return-object v0

    :cond_a
    const/4 p0, 0x1

    .line 2
    invoke-static {p0}, Ld0/e0/p/d/m0/k/k$d;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static success()Ld0/e0/p/d/m0/k/k$d;
    .locals 1

    .line 1
    sget-object v0, Ld0/e0/p/d/m0/k/k$d;->a:Ld0/e0/p/d/m0/k/k$d;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Ld0/e0/p/d/m0/k/k$d;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public getResult()Ld0/e0/p/d/m0/k/k$d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/e0/p/d/m0/k/k$d;->b:Ld0/e0/p/d/m0/k/k$d$a;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x5

    invoke-static {v0}, Ld0/e0/p/d/m0/k/k$d;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method
