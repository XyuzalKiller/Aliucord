.class public Ld0/e0/p/d/m0/e/a/h0/c;
.super Ld0/e0/p/d/m0/c/i1/g;
.source "JavaClassConstructorDescriptor.java"

# interfaces
.implements Ld0/e0/p/d/m0/e/a/h0/b;


# instance fields
.field public O:Ljava/lang/Boolean;

.field public P:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ld0/e0/p/d/m0/c/e;Ld0/e0/p/d/m0/e/a/h0/c;Ld0/e0/p/d/m0/c/g1/g;ZLd0/e0/p/d/m0/c/b$a;Ld0/e0/p/d/m0/c/u0;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    if-eqz p3, :cond_1b

    if-eqz p5, :cond_16

    if-eqz p6, :cond_11

    .line 1
    invoke-direct/range {p0 .. p6}, Ld0/e0/p/d/m0/c/i1/g;-><init>(Ld0/e0/p/d/m0/c/e;Ld0/e0/p/d/m0/c/l;Ld0/e0/p/d/m0/c/g1/g;ZLd0/e0/p/d/m0/c/b$a;Ld0/e0/p/d/m0/c/u0;)V

    .line 2
    iput-object v0, p0, Ld0/e0/p/d/m0/e/a/h0/c;->O:Ljava/lang/Boolean;

    .line 3
    iput-object v0, p0, Ld0/e0/p/d/m0/e/a/h0/c;->P:Ljava/lang/Boolean;

    return-void

    :cond_11
    const/4 p1, 0x3

    .line 4
    invoke-static {p1}, Ld0/e0/p/d/m0/e/a/h0/c;->a(I)V

    throw v0

    :cond_16
    const/4 p1, 0x2

    invoke-static {p1}, Ld0/e0/p/d/m0/e/a/h0/c;->a(I)V

    throw v0

    :cond_1b
    const/4 p1, 0x1

    invoke-static {p1}, Ld0/e0/p/d/m0/e/a/h0/c;->a(I)V

    throw v0

    :cond_20
    const/4 p1, 0x0

    invoke-static {p1}, Ld0/e0/p/d/m0/e/a/h0/c;->a(I)V

    throw v0
.end method

.method public static synthetic a(I)V
    .locals 9

    const/16 v0, 0x12

    const/16 v1, 0xb

    if-eq p0, v1, :cond_b

    if-eq p0, v0, :cond_b

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_d

    :cond_b
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_d
    const/4 v3, 0x2

    if-eq p0, v1, :cond_14

    if-eq p0, v0, :cond_14

    const/4 v4, 0x3

    goto :goto_15

    :cond_14
    const/4 v4, 0x2

    :goto_15
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_84

    :pswitch_1d
    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_47

    :pswitch_22
    const-string v7, "enhancedReturnType"

    aput-object v7, v4, v6

    goto :goto_47

    :pswitch_27
    const-string v7, "enhancedValueParametersData"

    aput-object v7, v4, v6

    goto :goto_47

    :pswitch_2c
    const-string v7, "sourceElement"

    aput-object v7, v4, v6

    goto :goto_47

    :pswitch_31
    aput-object v5, v4, v6

    goto :goto_47

    :pswitch_34
    const-string v7, "newOwner"

    aput-object v7, v4, v6

    goto :goto_47

    :pswitch_39
    const-string v7, "source"

    aput-object v7, v4, v6

    goto :goto_47

    :pswitch_3e
    const-string v7, "kind"

    aput-object v7, v4, v6

    goto :goto_47

    :pswitch_43
    const-string v7, "annotations"

    aput-object v7, v4, v6

    :goto_47
    const-string v6, "enhance"

    const-string v7, "createSubstitutedCopy"

    const/4 v8, 0x1

    if-eq p0, v1, :cond_56

    if-eq p0, v0, :cond_53

    aput-object v5, v4, v8

    goto :goto_58

    :cond_53
    aput-object v6, v4, v8

    goto :goto_58

    :cond_56
    aput-object v7, v4, v8

    :goto_58
    packed-switch p0, :pswitch_data_ac

    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_6f

    :pswitch_60
    aput-object v6, v4, v3

    goto :goto_6f

    :pswitch_63
    const-string v5, "createDescriptor"

    aput-object v5, v4, v3

    goto :goto_6f

    :pswitch_68
    aput-object v7, v4, v3

    goto :goto_6f

    :pswitch_6b
    const-string v5, "createJavaConstructor"

    aput-object v5, v4, v3

    :goto_6f
    :pswitch_6f
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_7d

    if-eq p0, v0, :cond_7d

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_82

    :cond_7d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_82
    throw p0

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_1d
        :pswitch_43
        :pswitch_39
        :pswitch_34
        :pswitch_3e
        :pswitch_43
        :pswitch_39
        :pswitch_31
        :pswitch_34
        :pswitch_3e
        :pswitch_2c
        :pswitch_43
        :pswitch_27
        :pswitch_22
        :pswitch_31
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x4
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_6f
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_60
        :pswitch_60
        :pswitch_6f
    .end packed-switch
.end method

.method public static createJavaConstructor(Ld0/e0/p/d/m0/c/e;Ld0/e0/p/d/m0/c/g1/g;ZLd0/e0/p/d/m0/c/u0;)Ld0/e0/p/d/m0/e/a/h0/c;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    if-eqz p1, :cond_1a

    if-eqz p3, :cond_15

    .line 1
    new-instance v0, Ld0/e0/p/d/m0/e/a/h0/c;

    const/4 v3, 0x0

    sget-object v6, Ld0/e0/p/d/m0/c/b$a;->j:Ld0/e0/p/d/m0/c/b$a;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Ld0/e0/p/d/m0/e/a/h0/c;-><init>(Ld0/e0/p/d/m0/c/e;Ld0/e0/p/d/m0/e/a/h0/c;Ld0/e0/p/d/m0/c/g1/g;ZLd0/e0/p/d/m0/c/b$a;Ld0/e0/p/d/m0/c/u0;)V

    return-object v0

    :cond_15
    const/4 p0, 0x6

    .line 2
    invoke-static {p0}, Ld0/e0/p/d/m0/e/a/h0/c;->a(I)V

    throw v0

    :cond_1a
    const/4 p0, 0x5

    invoke-static {p0}, Ld0/e0/p/d/m0/e/a/h0/c;->a(I)V

    throw v0

    :cond_1f
    const/4 p0, 0x4

    invoke-static {p0}, Ld0/e0/p/d/m0/e/a/h0/c;->a(I)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic b(Ld0/e0/p/d/m0/c/m;Ld0/e0/p/d/m0/c/x;Ld0/e0/p/d/m0/c/b$a;Ld0/e0/p/d/m0/g/e;Ld0/e0/p/d/m0/c/g1/g;Ld0/e0/p/d/m0/c/u0;)Ld0/e0/p/d/m0/c/i1/q;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Ld0/e0/p/d/m0/e/a/h0/c;->f(Ld0/e0/p/d/m0/c/m;Ld0/e0/p/d/m0/c/x;Ld0/e0/p/d/m0/c/b$a;Ld0/e0/p/d/m0/g/e;Ld0/e0/p/d/m0/c/g1/g;Ld0/e0/p/d/m0/c/u0;)Ld0/e0/p/d/m0/e/a/h0/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ld0/e0/p/d/m0/c/m;Ld0/e0/p/d/m0/c/x;Ld0/e0/p/d/m0/c/b$a;Ld0/e0/p/d/m0/g/e;Ld0/e0/p/d/m0/c/g1/g;Ld0/e0/p/d/m0/c/u0;)Ld0/e0/p/d/m0/c/i1/g;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Ld0/e0/p/d/m0/e/a/h0/c;->f(Ld0/e0/p/d/m0/c/m;Ld0/e0/p/d/m0/c/x;Ld0/e0/p/d/m0/c/b$a;Ld0/e0/p/d/m0/g/e;Ld0/e0/p/d/m0/c/g1/g;Ld0/e0/p/d/m0/c/u0;)Ld0/e0/p/d/m0/e/a/h0/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic enhance(Ld0/e0/p/d/m0/n/c0;Ljava/util/List;Ld0/e0/p/d/m0/n/c0;Lkotlin/Pair;)Ld0/e0/p/d/m0/e/a/h0/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Ld0/e0/p/d/m0/e/a/h0/c;->enhance(Ld0/e0/p/d/m0/n/c0;Ljava/util/List;Ld0/e0/p/d/m0/n/c0;Lkotlin/Pair;)Ld0/e0/p/d/m0/e/a/h0/c;

    move-result-object p1

    return-object p1
.end method

.method public enhance(Ld0/e0/p/d/m0/n/c0;Ljava/util/List;Ld0/e0/p/d/m0/n/c0;Lkotlin/Pair;)Ld0/e0/p/d/m0/e/a/h0/c;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld0/e0/p/d/m0/n/c0;",
            "Ljava/util/List<",
            "Ld0/e0/p/d/m0/e/a/h0/l;",
            ">;",
            "Ld0/e0/p/d/m0/n/c0;",
            "Lkotlin/Pair<",
            "Ld0/e0/p/d/m0/c/a$a<",
            "*>;*>;)",
            "Ld0/e0/p/d/m0/e/a/h0/c;"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_5f

    if-eqz p3, :cond_59

    .line 2
    invoke-virtual {p0}, Ld0/e0/p/d/m0/c/i1/g;->getContainingDeclaration()Ld0/e0/p/d/m0/c/e;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Ld0/e0/p/d/m0/c/i1/q;->getKind()Ld0/e0/p/d/m0/c/b$a;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Ld0/e0/p/d/m0/c/g1/b;->getAnnotations()Ld0/e0/p/d/m0/c/g1/g;

    move-result-object v8

    invoke-virtual {p0}, Ld0/e0/p/d/m0/c/i1/l;->getSource()Ld0/e0/p/d/m0/c/u0;

    move-result-object v9

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Ld0/e0/p/d/m0/e/a/h0/c;->f(Ld0/e0/p/d/m0/c/m;Ld0/e0/p/d/m0/c/x;Ld0/e0/p/d/m0/c/b$a;Ld0/e0/p/d/m0/g/e;Ld0/e0/p/d/m0/c/g1/g;Ld0/e0/p/d/m0/c/u0;)Ld0/e0/p/d/m0/e/a/h0/c;

    move-result-object v11

    if-nez v0, :cond_21

    goto :goto_2b

    .line 3
    :cond_21
    sget-object v2, Ld0/e0/p/d/m0/c/g1/g;->f:Ld0/e0/p/d/m0/c/g1/g$a;

    invoke-virtual {v2}, Ld0/e0/p/d/m0/c/g1/g$a;->getEMPTY()Ld0/e0/p/d/m0/c/g1/g;

    move-result-object v2

    invoke-static {v11, p1, v2}, Ld0/e0/p/d/m0/k/d;->createExtensionReceiverParameterForCallable(Ld0/e0/p/d/m0/c/a;Ld0/e0/p/d/m0/n/c0;Ld0/e0/p/d/m0/c/g1/g;)Ld0/e0/p/d/m0/c/q0;

    move-result-object v2

    :goto_2b
    move-object v4, v2

    .line 4
    invoke-virtual {p0}, Ld0/e0/p/d/m0/c/i1/q;->getDispatchReceiverParameter()Ld0/e0/p/d/m0/c/q0;

    move-result-object v5

    invoke-virtual {p0}, Ld0/e0/p/d/m0/c/i1/q;->getTypeParameters()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0}, Ld0/e0/p/d/m0/c/i1/q;->getValueParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0, v11}, Ld0/e0/p/d/m0/e/a/h0/k;->copyValueParameters(Ljava/util/Collection;Ljava/util/Collection;Ld0/e0/p/d/m0/c/a;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Ld0/e0/p/d/m0/c/i1/q;->getModality()Ld0/e0/p/d/m0/c/z;

    move-result-object v9

    invoke-virtual {p0}, Ld0/e0/p/d/m0/c/i1/q;->getVisibility()Ld0/e0/p/d/m0/c/u;

    move-result-object v10

    move-object v3, v11

    move-object v8, p3

    invoke-virtual/range {v3 .. v10}, Ld0/e0/p/d/m0/c/i1/q;->initialize(Ld0/e0/p/d/m0/c/q0;Ld0/e0/p/d/m0/c/q0;Ljava/util/List;Ljava/util/List;Ld0/e0/p/d/m0/n/c0;Ld0/e0/p/d/m0/c/z;Ld0/e0/p/d/m0/c/u;)Ld0/e0/p/d/m0/c/i1/q;

    if-eqz p4, :cond_58

    .line 5
    invoke-virtual/range {p4 .. p4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld0/e0/p/d/m0/c/a$a;

    invoke-virtual/range {p4 .. p4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ld0/e0/p/d/m0/c/i1/q;->putInUserDataMap(Ld0/e0/p/d/m0/c/a$a;Ljava/lang/Object;)V

    :cond_58
    return-object v11

    :cond_59
    const/16 v0, 0x11

    .line 6
    invoke-static {v0}, Ld0/e0/p/d/m0/e/a/h0/c;->a(I)V

    throw v2

    :cond_5f
    const/16 v0, 0x10

    invoke-static {v0}, Ld0/e0/p/d/m0/e/a/h0/c;->a(I)V

    throw v2
.end method

.method public f(Ld0/e0/p/d/m0/c/m;Ld0/e0/p/d/m0/c/x;Ld0/e0/p/d/m0/c/b$a;Ld0/e0/p/d/m0/g/e;Ld0/e0/p/d/m0/c/g1/g;Ld0/e0/p/d/m0/c/u0;)Ld0/e0/p/d/m0/e/a/h0/c;
    .locals 7

    const/4 p4, 0x0

    if-eqz p1, :cond_93

    if-eqz p3, :cond_8d

    if-eqz p5, :cond_87

    if-eqz p6, :cond_81

    .line 1
    sget-object v0, Ld0/e0/p/d/m0/c/b$a;->j:Ld0/e0/p/d/m0/c/b$a;

    if-eq p3, v0, :cond_41

    sget-object v0, Ld0/e0/p/d/m0/c/b$a;->m:Ld0/e0/p/d/m0/c/b$a;

    if-ne p3, v0, :cond_12

    goto :goto_41

    .line 2
    :cond_12
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Attempt at creating a constructor that is not a declaration: \ncopy from: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, "\n"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "newOwner: "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "kind: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_41
    :goto_41
    move-object v1, p1

    check-cast v1, Ld0/e0/p/d/m0/c/e;

    move-object v2, p2

    check-cast v2, Ld0/e0/p/d/m0/e/a/h0/c;

    if-eqz v1, :cond_7b

    if-eqz p3, :cond_75

    if-eqz p6, :cond_6f

    if-eqz p5, :cond_69

    .line 4
    new-instance p1, Ld0/e0/p/d/m0/e/a/h0/c;

    iget-boolean v4, p0, Ld0/e0/p/d/m0/c/i1/g;->N:Z

    move-object v0, p1

    move-object v3, p5

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Ld0/e0/p/d/m0/e/a/h0/c;-><init>(Ld0/e0/p/d/m0/c/e;Ld0/e0/p/d/m0/e/a/h0/c;Ld0/e0/p/d/m0/c/g1/g;ZLd0/e0/p/d/m0/c/b$a;Ld0/e0/p/d/m0/c/u0;)V

    .line 5
    invoke-virtual {p0}, Ld0/e0/p/d/m0/e/a/h0/c;->hasStableParameterNames()Z

    move-result p2

    invoke-virtual {p1, p2}, Ld0/e0/p/d/m0/e/a/h0/c;->setHasStableParameterNames(Z)V

    .line 6
    invoke-virtual {p0}, Ld0/e0/p/d/m0/e/a/h0/c;->hasSynthesizedParameterNames()Z

    move-result p2

    invoke-virtual {p1, p2}, Ld0/e0/p/d/m0/e/a/h0/c;->setHasSynthesizedParameterNames(Z)V

    return-object p1

    :cond_69
    const/16 p1, 0xf

    .line 7
    invoke-static {p1}, Ld0/e0/p/d/m0/e/a/h0/c;->a(I)V

    throw p4

    :cond_6f
    const/16 p1, 0xe

    invoke-static {p1}, Ld0/e0/p/d/m0/e/a/h0/c;->a(I)V

    throw p4

    :cond_75
    const/16 p1, 0xd

    invoke-static {p1}, Ld0/e0/p/d/m0/e/a/h0/c;->a(I)V

    throw p4

    :cond_7b
    const/16 p1, 0xc

    invoke-static {p1}, Ld0/e0/p/d/m0/e/a/h0/c;->a(I)V

    throw p4

    :cond_81
    const/16 p1, 0xa

    .line 8
    invoke-static {p1}, Ld0/e0/p/d/m0/e/a/h0/c;->a(I)V

    throw p4

    :cond_87
    const/16 p1, 0x9

    invoke-static {p1}, Ld0/e0/p/d/m0/e/a/h0/c;->a(I)V

    throw p4

    :cond_8d
    const/16 p1, 0x8

    invoke-static {p1}, Ld0/e0/p/d/m0/e/a/h0/c;->a(I)V

    throw p4

    :cond_93
    const/4 p1, 0x7

    invoke-static {p1}, Ld0/e0/p/d/m0/e/a/h0/c;->a(I)V

    throw p4
.end method

.method public hasStableParameterNames()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/e0/p/d/m0/e/a/h0/c;->O:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasSynthesizedParameterNames()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/e0/p/d/m0/e/a/h0/c;->P:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setHasStableParameterNames(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Ld0/e0/p/d/m0/e/a/h0/c;->O:Ljava/lang/Boolean;

    return-void
.end method

.method public setHasSynthesizedParameterNames(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Ld0/e0/p/d/m0/e/a/h0/c;->P:Ljava/lang/Boolean;

    return-void
.end method
