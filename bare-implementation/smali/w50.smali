.class public final Lw50;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lf77;


# instance fields
.field public final synthetic a:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw50;->a:[Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lz40;

    .line 2
    .line 3
    iget-object p0, p0, Lw50;->a:[Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lz40;-><init>([Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
