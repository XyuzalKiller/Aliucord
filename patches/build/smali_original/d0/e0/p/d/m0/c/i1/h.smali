.class public abstract Ld0/e0/p/d/m0/c/i1/h;
.super Ld0/e0/p/d/m0/c/i1/a;
.source "ClassDescriptorBase.java"


# instance fields
.field public final o:Ld0/e0/p/d/m0/c/m;

.field public final p:Ld0/e0/p/d/m0/c/u0;

.field public final q:Z


# direct methods
.method public constructor <init>(Ld0/e0/p/d/m0/m/o;Ld0/e0/p/d/m0/c/m;Ld0/e0/p/d/m0/g/e;Ld0/e0/p/d/m0/c/u0;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_22

    if-eqz p2, :cond_1d

    if-eqz p3, :cond_18

    if-eqz p4, :cond_13

    .line 1
    invoke-direct {p0, p1, p3}, Ld0/e0/p/d/m0/c/i1/a;-><init>(Ld0/e0/p/d/m0/m/o;Ld0/e0/p/d/m0/g/e;)V

    .line 2
    iput-object p2, p0, Ld0/e0/p/d/m0/c/i1/h;->o:Ld0/e0/p/d/m0/c/m;

    .line 3
    iput-object p4, p0, Ld0/e0/p/d/m0/c/i1/h;->p:Ld0/e0/p/d/m0/c/u0;

    .line 4
    iput-boolean p5, p0, Ld0/e0/p/d/m0/c/i1/h;->q:Z

    return-void

    :cond_13
    const/4 p1, 0x3

    .line 5
    invoke-static {p1}, Ld0/e0/p/d/m0/c/i1/h;->a(I)V

    throw v0

    :cond_18
    const/4 p1, 0x2

    invoke-static {p1}, Ld0/e0/p/d/m0/c/i1/h;->a(I)V

    throw v0

    :cond_1d
    const/4 p1, 0x1

    invoke-static {p1}, Ld0/e0/p/d/m0/c/i1/h;->a(I)V

    throw v0

    :cond_22
    const/4 p1, 0x0

    invoke-static {p1}, Ld0/e0/p/d/m0/c/i1/h;->a(I)V

    throw v0
.end method

.method public static synthetic a(I)V
    .locals 9

    const/4 v0, 0x5

    const/4 v1, 0x4

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_b

    :cond_9
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_b
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p0, v1, :cond_13

    if-eq p0, v0, :cond_13

    const/4 v5, 0x3

    goto :goto_14

    :cond_13
    const/4 v5, 0x2

    :goto_14
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq p0, v7, :cond_36

    if-eq p0, v4, :cond_31

    if-eq p0, v3, :cond_2c

    if-eq p0, v1, :cond_29

    if-eq p0, v0, :cond_29

    const-string v3, "storageManager"

    aput-object v3, v5, v8

    goto :goto_3a

    :cond_29
    aput-object v6, v5, v8

    goto :goto_3a

    :cond_2c
    const-string v3, "source"

    aput-object v3, v5, v8

    goto :goto_3a

    :cond_31
    const-string v3, "name"

    aput-object v3, v5, v8

    goto :goto_3a

    :cond_36
    const-string v3, "containingDeclaration"

    aput-object v3, v5, v8

    :goto_3a
    if-eq p0, v1, :cond_46

    if-eq p0, v0, :cond_41

    aput-object v6, v5, v7

    goto :goto_4a

    :cond_41
    const-string v3, "getSource"

    aput-object v3, v5, v7

    goto :goto_4a

    :cond_46
    const-string v3, "getContainingDeclaration"

    aput-object v3, v5, v7

    :goto_4a
    if-eq p0, v1, :cond_52

    if-eq p0, v0, :cond_52

    const-string v3, "<init>"

    aput-object v3, v5, v4

    :cond_52
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_60

    if-eq p0, v0, :cond_60

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_65

    :cond_60
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_65
    throw p0
.end method


# virtual methods
.method public getContainingDeclaration()Ld0/e0/p/d/m0/c/m;
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/e0/p/d/m0/c/i1/h;->o:Ld0/e0/p/d/m0/c/m;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x4

    invoke-static {v0}, Ld0/e0/p/d/m0/c/i1/h;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getSource()Ld0/e0/p/d/m0/c/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/e0/p/d/m0/c/i1/h;->p:Ld0/e0/p/d/m0/c/u0;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x5

    invoke-static {v0}, Ld0/e0/p/d/m0/c/i1/h;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public isExternal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld0/e0/p/d/m0/c/i1/h;->q:Z

    return v0
.end method
