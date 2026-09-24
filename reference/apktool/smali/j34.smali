.class public interface abstract Lj34;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lvs4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lts4;

    .line 2
    .line 3
    sget-object v0, Lts4;->a:Ljava/util/Map;

    .line 4
    .line 5
    new-instance v1, Lvs4;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lvs4;-><init>(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    sput-object v1, Lj34;->a:Lvs4;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
.end method
