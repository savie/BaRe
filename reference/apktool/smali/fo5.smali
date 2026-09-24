.class public final Lfo5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lq18;


# static fields
.field public static final a:Lfo5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfo5;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfo5;->a:Lfo5;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lt40;Ljava/util/HashMap;Lr18;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Ljava/util/Collection;
    .locals 0

    .line 1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(Lt40;Ljava/lang/Object;Lp18;)Lt40;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lxs4;->b:Lev1;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p0, Lt40;->b:Lt40;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    return-object p1
.end method
