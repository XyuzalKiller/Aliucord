.class public Ld0/e0/p/d/m0/k/a0/p/g;
.super Ld0/e0/p/d/m0/k/a0/p/a;
.source "TransientReceiver.java"


# direct methods
.method public constructor <init>(Ld0/e0/p/d/m0/n/c0;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    if-eqz p1, :cond_9

    .line 1
    invoke-direct {p0, p1, v0}, Ld0/e0/p/d/m0/k/a0/p/a;-><init>(Ld0/e0/p/d/m0/n/c0;Ld0/e0/p/d/m0/k/a0/p/d;)V

    return-void

    :cond_9
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ld0/e0/p/d/m0/k/a0/p/g;->a(I)V

    throw v0

    :cond_e
    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Ld0/e0/p/d/m0/k/a0/p/g;->a(I)V

    throw v0
.end method

.method public static synthetic a(I)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq p0, v2, :cond_c

    const-string v3, "type"

    aput-object v3, v0, v1

    goto :goto_10

    :cond_c
    const-string v3, "newType"

    aput-object v3, v0, v1

    :goto_10
    const/4 v1, 0x1

    const-string v3, "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/TransientReceiver"

    aput-object v3, v0, v1

    if-eq p0, v2, :cond_1c

    const-string p0, "<init>"

    aput-object p0, v0, v2

    goto :goto_20

    :cond_1c
    const-string p0, "replaceType"

    aput-object p0, v0, v2

    :goto_20
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "{Transient} : "

    .line 1
    invoke-static {v0}, Lb/d/b/a/a;->U(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ld0/e0/p/d/m0/k/a0/p/a;->getType()Ld0/e0/p/d/m0/n/c0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
