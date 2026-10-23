.class public abstract Landroidx/fragment/app/o;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lfu4;
.implements Lzl8;
.implements Lw24;
.implements Lwx6;


# static fields
.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;


# instance fields
.field mAdded:Z

.field mAnimationInfo:Ldr3;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field private mCalled:Z

.field mChildFragmentManager:Lur3;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDefaultFactory:Lxx6;

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Landroidx/fragment/app/z;

.field mFromLayout:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Landroidx/fragment/app/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/t;"
        }
    .end annotation
.end field

.field mInDynamicContainer:Z

.field mInLayout:Z

.field mIsCreated:Z

.field private mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLifecycleRegistry:Lhu4;

.field mMaxState:Lst4;

.field mMenuVisible:Z

.field private final mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOnPreAttachedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lfr3;",
            ">;"
        }
    .end annotation
.end field

.field mParentFragment:Landroidx/fragment/app/o;

.field mPerformedCreateView:Z

.field public mPreviousWho:Ljava/lang/String;

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field private final mSavedStateAttachListener:Landroidx/fragment/app/k;

.field mSavedStateRegistryController:Lw00;

.field mSavedUserVisibleHint:Ljava/lang/Boolean;

.field mSavedViewRegistryState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroidx/fragment/app/o;

.field mTargetRequestCode:I

.field mTargetWho:Ljava/lang/String;

.field mTransitioning:Z

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mViewLifecycleOwner:Landroidx/fragment/app/f0;

.field final mViewLifecycleOwnerLiveData:Lgj5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgj5;"
        }
    .end annotation
.end field

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/fragment/app/o;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/fragment/app/o;->mState:I

    .line 6
    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Landroidx/fragment/app/o;->mTargetWho:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/fragment/app/o;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    .line 21
    .line 22
    new-instance v0, Lur3;

    .line 23
    .line 24
    invoke-direct {v0}, Landroidx/fragment/app/z;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mMenuVisible:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mUserVisibleHint:Z

    .line 33
    .line 34
    new-instance v0, Landroidx/fragment/app/j;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/o;)V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lst4;->e:Lst4;

    .line 40
    .line 41
    iput-object v0, p0, Landroidx/fragment/app/o;->mMaxState:Lst4;

    .line 42
    .line 43
    new-instance v0, Lgj5;

    .line 44
    .line 45
    invoke-direct {v0}, Lzy4;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Landroidx/fragment/app/o;->mViewLifecycleOwnerLiveData:Lgj5;

    .line 49
    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Landroidx/fragment/app/o;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Landroidx/fragment/app/o;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    .line 63
    .line 64
    new-instance v0, Landroidx/fragment/app/k;

    .line 65
    .line 66
    invoke-direct {v0, p0}, Landroidx/fragment/app/k;-><init>(Landroidx/fragment/app/o;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Landroidx/fragment/app/o;->mSavedStateAttachListener:Landroidx/fragment/app/k;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/o;->h()V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public c()Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public createFragmentContainer()Lms8;
    .locals 1

    .line 1
    new-instance v0, Landroidx/fragment/app/l;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/fragment/app/l;-><init>(Landroidx/fragment/app/o;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "mFragmentId=#"

    .line 5
    .line 6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Landroidx/fragment/app/o;->mFragmentId:I

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, " mContainerId=#"

    .line 19
    .line 20
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Landroidx/fragment/app/o;->mContainerId:I

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v0, " mTag="

    .line 33
    .line 34
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/fragment/app/o;->mTag:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "mState="

    .line 46
    .line 47
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget v0, p0, Landroidx/fragment/app/o;->mState:I

    .line 51
    .line 52
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 53
    .line 54
    .line 55
    const-string v0, " mWho="

    .line 56
    .line 57
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v0, " mBackStackNesting="

    .line 66
    .line 67
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget v0, p0, Landroidx/fragment/app/o;->mBackStackNesting:I

    .line 71
    .line 72
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v0, "mAdded="

    .line 79
    .line 80
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mAdded:Z

    .line 84
    .line 85
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 86
    .line 87
    .line 88
    const-string v0, " mRemoving="

    .line 89
    .line 90
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mRemoving:Z

    .line 94
    .line 95
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 96
    .line 97
    .line 98
    const-string v0, " mFromLayout="

    .line 99
    .line 100
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mFromLayout:Z

    .line 104
    .line 105
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 106
    .line 107
    .line 108
    const-string v0, " mInLayout="

    .line 109
    .line 110
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mInLayout:Z

    .line 114
    .line 115
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string v0, "mHidden="

    .line 122
    .line 123
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mHidden:Z

    .line 127
    .line 128
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 129
    .line 130
    .line 131
    const-string v0, " mDetached="

    .line 132
    .line 133
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mDetached:Z

    .line 137
    .line 138
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 139
    .line 140
    .line 141
    const-string v0, " mMenuVisible="

    .line 142
    .line 143
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mMenuVisible:Z

    .line 147
    .line 148
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 149
    .line 150
    .line 151
    const-string v0, " mHasMenu="

    .line 152
    .line 153
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const/4 v0, 0x0

    .line 157
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string v1, "mRetainInstance="

    .line 164
    .line 165
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-boolean v1, p0, Landroidx/fragment/app/o;->mRetainInstance:Z

    .line 169
    .line 170
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 171
    .line 172
    .line 173
    const-string v1, " mUserVisibleHint="

    .line 174
    .line 175
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-boolean v1, p0, Landroidx/fragment/app/o;->mUserVisibleHint:Z

    .line 179
    .line 180
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 184
    .line 185
    if-eqz v1, :cond_0

    .line 186
    .line 187
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v1, "mFragmentManager="

    .line 191
    .line 192
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v1, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 196
    .line 197
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 201
    .line 202
    if-eqz v1, :cond_1

    .line 203
    .line 204
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string v1, "mHost="

    .line 208
    .line 209
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v1, p0, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 213
    .line 214
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/o;->mParentFragment:Landroidx/fragment/app/o;

    .line 218
    .line 219
    if-eqz v1, :cond_2

    .line 220
    .line 221
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const-string v1, "mParentFragment="

    .line 225
    .line 226
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, p0, Landroidx/fragment/app/o;->mParentFragment:Landroidx/fragment/app/o;

    .line 230
    .line 231
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/o;->mArguments:Landroid/os/Bundle;

    .line 235
    .line 236
    if-eqz v1, :cond_3

    .line 237
    .line 238
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string v1, "mArguments="

    .line 242
    .line 243
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object v1, p0, Landroidx/fragment/app/o;->mArguments:Landroid/os/Bundle;

    .line 247
    .line 248
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 252
    .line 253
    if-eqz v1, :cond_4

    .line 254
    .line 255
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const-string v1, "mSavedFragmentState="

    .line 259
    .line 260
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v1, p0, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 264
    .line 265
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/o;->mSavedViewState:Landroid/util/SparseArray;

    .line 269
    .line 270
    if-eqz v1, :cond_5

    .line 271
    .line 272
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    const-string v1, "mSavedViewState="

    .line 276
    .line 277
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    iget-object v1, p0, Landroidx/fragment/app/o;->mSavedViewState:Landroid/util/SparseArray;

    .line 281
    .line 282
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    :cond_5
    iget-object v1, p0, Landroidx/fragment/app/o;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 286
    .line 287
    if-eqz v1, :cond_6

    .line 288
    .line 289
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    const-string v1, "mSavedViewRegistryState="

    .line 293
    .line 294
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    iget-object v1, p0, Landroidx/fragment/app/o;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 298
    .line 299
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    :cond_6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/o;->g(Z)Landroidx/fragment/app/o;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    if-eqz v1, :cond_7

    .line 307
    .line 308
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    const-string v2, "mTarget="

    .line 312
    .line 313
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    const-string v1, " mTargetRequestCode="

    .line 320
    .line 321
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iget v1, p0, Landroidx/fragment/app/o;->mTargetRequestCode:I

    .line 325
    .line 326
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 327
    .line 328
    .line 329
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    const-string v1, "mPopDirection="

    .line 333
    .line 334
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    iget-object v1, p0, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 338
    .line 339
    if-nez v1, :cond_8

    .line 340
    .line 341
    move v1, v0

    .line 342
    goto :goto_0

    .line 343
    :cond_8
    iget-boolean v1, v1, Ldr3;->a:Z

    .line 344
    .line 345
    :goto_0
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 346
    .line 347
    .line 348
    iget-object v1, p0, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 349
    .line 350
    if-nez v1, :cond_9

    .line 351
    .line 352
    move v1, v0

    .line 353
    goto :goto_1

    .line 354
    :cond_9
    iget v1, v1, Ldr3;->b:I

    .line 355
    .line 356
    :goto_1
    if-eqz v1, :cond_b

    .line 357
    .line 358
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    const-string v1, "getEnterAnim="

    .line 362
    .line 363
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    iget-object v1, p0, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 367
    .line 368
    if-nez v1, :cond_a

    .line 369
    .line 370
    move v1, v0

    .line 371
    goto :goto_2

    .line 372
    :cond_a
    iget v1, v1, Ldr3;->b:I

    .line 373
    .line 374
    :goto_2
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 375
    .line 376
    .line 377
    :cond_b
    iget-object v1, p0, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 378
    .line 379
    if-nez v1, :cond_c

    .line 380
    .line 381
    move v1, v0

    .line 382
    goto :goto_3

    .line 383
    :cond_c
    iget v1, v1, Ldr3;->c:I

    .line 384
    .line 385
    :goto_3
    if-eqz v1, :cond_e

    .line 386
    .line 387
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    const-string v1, "getExitAnim="

    .line 391
    .line 392
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    iget-object v1, p0, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 396
    .line 397
    if-nez v1, :cond_d

    .line 398
    .line 399
    move v1, v0

    .line 400
    goto :goto_4

    .line 401
    :cond_d
    iget v1, v1, Ldr3;->c:I

    .line 402
    .line 403
    :goto_4
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 404
    .line 405
    .line 406
    :cond_e
    iget-object v1, p0, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 407
    .line 408
    if-nez v1, :cond_f

    .line 409
    .line 410
    move v1, v0

    .line 411
    goto :goto_5

    .line 412
    :cond_f
    iget v1, v1, Ldr3;->d:I

    .line 413
    .line 414
    :goto_5
    if-eqz v1, :cond_11

    .line 415
    .line 416
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    const-string v1, "getPopEnterAnim="

    .line 420
    .line 421
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    iget-object v1, p0, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 425
    .line 426
    if-nez v1, :cond_10

    .line 427
    .line 428
    move v1, v0

    .line 429
    goto :goto_6

    .line 430
    :cond_10
    iget v1, v1, Ldr3;->d:I

    .line 431
    .line 432
    :goto_6
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 433
    .line 434
    .line 435
    :cond_11
    iget-object v1, p0, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 436
    .line 437
    if-nez v1, :cond_12

    .line 438
    .line 439
    move v1, v0

    .line 440
    goto :goto_7

    .line 441
    :cond_12
    iget v1, v1, Ldr3;->e:I

    .line 442
    .line 443
    :goto_7
    if-eqz v1, :cond_14

    .line 444
    .line 445
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    const-string v1, "getPopExitAnim="

    .line 449
    .line 450
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    iget-object v1, p0, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 454
    .line 455
    if-nez v1, :cond_13

    .line 456
    .line 457
    goto :goto_8

    .line 458
    :cond_13
    iget v0, v1, Ldr3;->e:I

    .line 459
    .line 460
    :goto_8
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 461
    .line 462
    .line 463
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 464
    .line 465
    if-eqz v0, :cond_15

    .line 466
    .line 467
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    const-string v0, "mContainer="

    .line 471
    .line 472
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    iget-object v0, p0, Landroidx/fragment/app/o;->mContainer:Landroid/view/ViewGroup;

    .line 476
    .line 477
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    :cond_15
    iget-object v0, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 481
    .line 482
    if-eqz v0, :cond_16

    .line 483
    .line 484
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    const-string v0, "mView="

    .line 488
    .line 489
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    iget-object v0, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 493
    .line 494
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    :cond_16
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getContext()Landroid/content/Context;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    if-eqz v0, :cond_17

    .line 502
    .line 503
    new-instance v0, Lro;

    .line 504
    .line 505
    invoke-interface {p0}, Lzl8;->getViewModelStore()Lyl8;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-direct {v0, p0, v1}, Lro;-><init>(Lfu4;Lyl8;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, p1, p3}, Lro;->e(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 513
    .line 514
    .line 515
    :cond_17
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    const-string v1, "Child "

    .line 521
    .line 522
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    iget-object v1, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 526
    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    const-string v1, ":"

    .line 531
    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    iget-object p0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 543
    .line 544
    const-string v0, "  "

    .line 545
    .line 546
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object p1

    .line 550
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/z;->v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    return-void
.end method

.method public final e()Ldr3;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ldr3;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Landroidx/fragment/app/o;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object v1, v0, Ldr3;->g:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v1, v0, Ldr3;->h:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object v1, v0, Ldr3;->i:Ljava/lang/Object;

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    iput v1, v0, Ldr3;->j:F

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Ldr3;->k:Landroid/view/View;

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 28
    .line 29
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-eq p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 p0, 0x1

    .line 6
    return p0
.end method

.method public final f()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mMaxState:Lst4;

    .line 2
    .line 3
    sget-object v1, Lst4;->b:Lst4;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/fragment/app/o;->mParentFragment:Landroidx/fragment/app/o;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object p0, p0, Landroidx/fragment/app/o;->mParentFragment:Landroidx/fragment/app/o;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/o;->f()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final g(Z)Landroidx/fragment/app/o;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lbs3;->a:Las3;

    .line 4
    .line 5
    new-instance p1, Lcx3;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "Attempting to get target fragment from fragment "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p1, p0, v0}, Lgn8;-><init>(Landroidx/fragment/app/o;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lbs3;->b(Lgn8;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lbs3;->a(Landroidx/fragment/app/o;)Las3;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/o;->mTarget:Landroidx/fragment/app/o;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p0, p0, Landroidx/fragment/app/o;->mTargetWho:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    iget-object p1, p1, Landroidx/fragment/app/z;->c:Landroidx/fragment/app/e0;

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Landroidx/fragment/app/e0;->b(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_2
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method public final generateActivityResultKey()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "fragment_"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "_rq#"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroidx/fragment/app/o;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final getActivity()Landroidx/fragment/app/u;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/t;->d:Landroidx/fragment/app/u;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/o;->mArguments:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getChildFragmentManager()Landroidx/fragment/app/z;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string v0, "Fragment "

    .line 9
    .line 10
    const-string v1, " has not been attached yet."

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/t;->e:Landroidx/fragment/app/u;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getDefaultViewModelCreationExtras()Lej5;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Landroid/app/Application;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v0, Landroid/app/Application;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_1
    if-nez v0, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    invoke-static {v1}, Landroidx/fragment/app/z;->K(I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Could not find Application instance from Context "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v2, "FragmentManager"

    .line 65
    .line 66
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_2
    new-instance v1, Lej5;

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-direct {v1, v2}, Lej5;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iget-object v2, v1, Ln22;->a:Ljava/util/LinkedHashMap;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    sget-object v3, Lvl8;->d:Lsl4;

    .line 80
    .line 81
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_3
    sget-object v0, Lcy0;->c:Lq34;

    .line 85
    .line 86
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    sget-object v0, Lcy0;->d:Lma2;

    .line 90
    .line 91
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Landroidx/fragment/app/o;->mArguments:Landroid/os/Bundle;

    .line 95
    .line 96
    if-eqz p0, :cond_4

    .line 97
    .line 98
    sget-object v0, Lcy0;->e:Llv1;

    .line 99
    .line 100
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :cond_4
    return-object v1
.end method

.method public final getDefaultViewModelProviderFactory()Lwl8;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/o;->mDefaultFactory:Lxx6;

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    instance-of v2, v0, Landroid/content/ContextWrapper;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    instance-of v2, v0, Landroid/app/Application;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Landroid/app/Application;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "Could not find Application instance from Context "

    .line 49
    .line 50
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ", you will need CreationExtras to use AndroidViewModel with the default ViewModelProvider.Factory"

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v2, "FragmentManager"

    .line 74
    .line 75
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_2
    new-instance v0, Lxx6;

    .line 79
    .line 80
    iget-object v2, p0, Landroidx/fragment/app/o;->mArguments:Landroid/os/Bundle;

    .line 81
    .line 82
    invoke-direct {v0, v1, p0, v2}, Lxx6;-><init>(Landroid/app/Application;Lwx6;Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Landroidx/fragment/app/o;->mDefaultFactory:Lxx6;

    .line 86
    .line 87
    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/o;->mDefaultFactory:Lxx6;

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_4
    const-string p0, "Can\'t access ViewModels from detached fragment"

    .line 91
    .line 92
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object v1
.end method

.method public final getFragmentManager()Landroidx/fragment/app/z;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/fragment/app/o;->mFragmentId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/o;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroidx/fragment/app/o;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method

.method public final getLifecycle()Lhu4;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/o;->mLifecycleRegistry:Lhu4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getParentFragment()Landroidx/fragment/app/o;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/o;->mParentFragment:Landroidx/fragment/app/o;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getParentFragmentManager()Landroidx/fragment/app/z;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "Fragment "

    .line 7
    .line 8
    const-string v1, " not associated with a fragment manager."

    .line 9
    .line 10
    invoke-static {v0, p0, v1}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getSavedStateRegistry()Lot9;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/o;->mSavedStateRegistryController:Lw00;

    .line 2
    .line 3
    iget-object p0, p0, Lw00;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lot9;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getViewLifecycleOwner()Landroidx/fragment/app/f0;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "Can\'t access the Fragment View\'s LifecycleOwner for "

    .line 7
    .line 8
    const-string v1, " when getView() is null i.e., before onCreateView() or after onDestroyView()"

    .line 9
    .line 10
    invoke-static {v0, p0, v1}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public final getViewModelStore()Lyl8;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/o;->f()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v0, v2, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/fragment/app/a0;->d:Ljava/util/HashMap;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lyl8;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Lyl8;

    .line 30
    .line 31
    invoke-direct {v1}, Lyl8;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_0
    return-object v1

    .line 40
    :cond_1
    const-string p0, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    .line 41
    .line 42
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_2
    const-string p0, "Can\'t access ViewModels from detached fragment"

    .line 47
    .line 48
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v1
.end method

.method public final h()V
    .locals 3

    .line 1
    new-instance v0, Lhu4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lhu4;-><init>(Lfu4;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroidx/fragment/app/o;->mLifecycleRegistry:Lhu4;

    .line 7
    .line 8
    new-instance v0, Lvx6;

    .line 9
    .line 10
    new-instance v1, Las4;

    .line 11
    .line 12
    const/16 v2, 0xa

    .line 13
    .line 14
    invoke-direct {v1, p0, v2}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Lvx6;-><init>(Lwx6;Las4;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lw00;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lw00;-><init>(Lvx6;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Landroidx/fragment/app/o;->mSavedStateRegistryController:Lw00;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Landroidx/fragment/app/o;->mDefaultFactory:Lxx6;

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/fragment/app/o;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/fragment/app/o;->mSavedStateAttachListener:Landroidx/fragment/app/k;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    iget p0, p0, Landroidx/fragment/app/o;->mState:I

    .line 41
    .line 42
    if-ltz p0, :cond_0

    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/fragment/app/k;->a()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public final initState()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/fragment/app/o;->mPreviousWho:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mAdded:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mRemoving:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mFromLayout:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mInLayout:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mRestored:Z

    .line 28
    .line 29
    iput v0, p0, Landroidx/fragment/app/o;->mBackStackNesting:I

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 33
    .line 34
    new-instance v2, Lur3;

    .line 35
    .line 36
    invoke-direct {v2}, Landroidx/fragment/app/z;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 40
    .line 41
    iput-object v1, p0, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 42
    .line 43
    iput v0, p0, Landroidx/fragment/app/o;->mFragmentId:I

    .line 44
    .line 45
    iput v0, p0, Landroidx/fragment/app/o;->mContainerId:I

    .line 46
    .line 47
    iput-object v1, p0, Landroidx/fragment/app/o;->mTag:Ljava/lang/String;

    .line 48
    .line 49
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mHidden:Z

    .line 50
    .line 51
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mDetached:Z

    .line 52
    .line 53
    return-void
.end method

.method public final isAdded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Landroidx/fragment/app/o;->mAdded:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final isDetached()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/fragment/app/o;->mDetached:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isHidden()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mHidden:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/fragment/app/o;->mParentFragment:Landroidx/fragment/app/o;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    move p0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/o;->isHidden()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    :goto_0
    if-eqz p0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    return v1

    .line 27
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 28
    return p0
.end method

.method public final isInBackStack()Z
    .locals 0

    .line 1
    iget p0, p0, Landroidx/fragment/app/o;->mBackStackNesting:I

    .line 2
    .line 3
    if-lez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final isRemoving()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/fragment/app/o;->mRemoving:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isVisible()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/o;->isHidden()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/z;->K(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Fragment "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p0, " received the following in onActivityResult(): requestCode: "

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, " resultCode: "

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p0, " data: "

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string p1, "FragmentManager"

    .line 47
    .line 48
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/t;->d:Landroidx/fragment/app/u;

    .line 11
    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iput-boolean p1, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 3
    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v2, "childFragmentManager"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Landroidx/fragment/app/z;->X(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 23
    .line 24
    iput-boolean v1, v0, Landroidx/fragment/app/z;->H:Z

    .line 25
    .line 26
    iput-boolean v1, v0, Landroidx/fragment/app/z;->I:Z

    .line 27
    .line 28
    iget-object v2, v0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 29
    .line 30
    iput-boolean v1, v2, Landroidx/fragment/app/a0;->g:Z

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroidx/fragment/app/z;->u(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 36
    .line 37
    iget v0, p0, Landroidx/fragment/app/z;->v:I

    .line 38
    .line 39
    if-lt v0, p1, :cond_1

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iput-boolean v1, p0, Landroidx/fragment/app/z;->H:Z

    .line 43
    .line 44
    iput-boolean v1, p0, Landroidx/fragment/app/z;->I:Z

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 47
    .line 48
    iput-boolean v1, v0, Landroidx/fragment/app/a0;->g:Z

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->u(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 3
    .line 4
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 3
    .line 4
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 3
    .line 4
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/fragment/app/z;->f:Landroidx/fragment/app/w;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    const-string p0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    .line 24
    .line 25
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public final onInflate()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v1, Landroidx/fragment/app/t;->d:Landroidx/fragment/app/u;

    .line 11
    .line 12
    :goto_0
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 3
    .line 4
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 3
    .line 4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 3
    .line 4
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 3
    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 3
    .line 4
    return-void
.end method

.method public final performActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/z;->Q()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    iput p1, p0, Landroidx/fragment/app/o;->mState:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 14
    .line 15
    iget-boolean v1, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 16
    .line 17
    const-string v2, "Fragment "

    .line 18
    .line 19
    if-eqz v1, :cond_5

    .line 20
    .line 21
    invoke-static {p1}, Landroidx/fragment/app/z;->K(I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "moveto RESTORE_VIEW_STATE: "

    .line 30
    .line 31
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v1, "FragmentManager"

    .line 42
    .line 43
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    const-string v3, "savedInstanceState"

    .line 56
    .line 57
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-object p1, v1

    .line 63
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/o;->mSavedViewState:Landroid/util/SparseArray;

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    iget-object v4, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {v4, v3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Landroidx/fragment/app/o;->mSavedViewState:Landroid/util/SparseArray;

    .line 73
    .line 74
    :cond_2
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroidx/fragment/app/o;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 77
    .line 78
    .line 79
    iget-boolean p1, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 84
    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    iget-object p1, p0, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 88
    .line 89
    sget-object v2, Lrt4;->ON_CREATE:Lrt4;

    .line 90
    .line 91
    invoke-virtual {p1, v2}, Landroidx/fragment/app/f0;->a(Lrt4;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    new-instance p1, Les7;

    .line 96
    .line 97
    const-string v0, " did not call through to super.onViewStateRestored()"

    .line 98
    .line 99
    invoke-static {v2, p0, v0}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-direct {p1, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_4
    :goto_1
    iput-object v1, p0, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 108
    .line 109
    iget-object p0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 110
    .line 111
    iput-boolean v0, p0, Landroidx/fragment/app/z;->H:Z

    .line 112
    .line 113
    iput-boolean v0, p0, Landroidx/fragment/app/z;->I:Z

    .line 114
    .line 115
    iget-object p1, p0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 116
    .line 117
    iput-boolean v0, p1, Landroidx/fragment/app/a0;->g:Z

    .line 118
    .line 119
    const/4 p1, 0x4

    .line 120
    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->u(I)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_5
    new-instance p1, Les7;

    .line 125
    .line 126
    const-string v0, " did not call through to super.onActivityCreated()"

    .line 127
    .line 128
    invoke-static {v2, p0, v0}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-direct {p1, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1
.end method

.method public final performAttach()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lfr3;

    .line 18
    .line 19
    invoke-virtual {v2}, Lfr3;->a()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/o;->createFragmentContainer()Lms8;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/z;->b(Landroidx/fragment/app/t;Lms8;Landroidx/fragment/app/o;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput v0, p0, Landroidx/fragment/app/o;->mState:I

    .line 39
    .line 40
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 43
    .line 44
    iget-object v1, v1, Landroidx/fragment/app/t;->e:Landroidx/fragment/app/u;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroidx/fragment/app/o;->onAttach(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    iget-boolean v1, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v1, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 54
    .line 55
    iget-object v1, v1, Landroidx/fragment/app/z;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lxr3;

    .line 72
    .line 73
    invoke-interface {v2}, Lxr3;->a()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 78
    .line 79
    iput-boolean v0, p0, Landroidx/fragment/app/z;->H:Z

    .line 80
    .line 81
    iput-boolean v0, p0, Landroidx/fragment/app/z;->I:Z

    .line 82
    .line 83
    iget-object v1, p0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 84
    .line 85
    iput-boolean v0, v1, Landroidx/fragment/app/a0;->g:Z

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroidx/fragment/app/z;->u(I)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    new-instance v0, Les7;

    .line 92
    .line 93
    const-string v1, "Fragment "

    .line 94
    .line 95
    const-string v2, " did not call through to super.onAttach()"

    .line 96
    .line 97
    invoke-static {v1, p0, v2}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-direct {v0, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0
.end method

.method public final performConfigurationChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 3
    .line 4
    return-void
.end method

.method public final performCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/z;->Q()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Landroidx/fragment/app/o;->mState:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/fragment/app/o;->mLifecycleRegistry:Lhu4;

    .line 13
    .line 14
    new-instance v2, Landroidx/fragment/app/m;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Landroidx/fragment/app/m;-><init>(Landroidx/fragment/app/o;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lhu4;->a(Leu4;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/fragment/app/o;->onCreate(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mIsCreated:Z

    .line 26
    .line 27
    iget-boolean p1, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Landroidx/fragment/app/o;->mLifecycleRegistry:Lhu4;

    .line 32
    .line 33
    sget-object p1, Lrt4;->ON_CREATE:Lrt4;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lhu4;->d(Lrt4;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance p1, Les7;

    .line 40
    .line 41
    const-string v0, "Fragment "

    .line 42
    .line 43
    const-string v1, " did not call through to super.onCreate()"

    .line 44
    .line 45
    invoke-static {v0, p0, v1}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {p1, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/z;->Q()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mPerformedCreateView:Z

    .line 8
    .line 9
    new-instance v0, Landroidx/fragment/app/f0;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewModelStore()Lyl8;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Landroidx/fragment/app/i;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/o;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0, v1, v2}, Landroidx/fragment/app/f0;-><init>(Landroidx/fragment/app/o;Lyl8;Landroidx/fragment/app/i;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/o;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 30
    .line 31
    iget-object p2, p0, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2}, Landroidx/fragment/app/f0;->b()V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x3

    .line 39
    invoke-static {p1}, Landroidx/fragment/app/z;->K(I)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p2, "Setting ViewLifecycleOwner on View "

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p2, " for Fragment "

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string p2, "FragmentManager"

    .line 70
    .line 71
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 75
    .line 76
    iget-object p2, p0, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    const p3, 0x7f0a05e2

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 88
    .line 89
    iget-object p2, p0, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    const p3, 0x7f0a05e6

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 101
    .line 102
    iget-object p2, p0, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    const p3, 0x7f0a05e5

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Landroidx/fragment/app/o;->mViewLifecycleOwnerLiveData:Lgj5;

    .line 114
    .line 115
    iget-object p0, p0, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 116
    .line 117
    invoke-virtual {p1, p0}, Lzy4;->k(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_1
    iget-object p1, p2, Landroidx/fragment/app/f0;->e:Lhu4;

    .line 122
    .line 123
    if-nez p1, :cond_2

    .line 124
    .line 125
    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 127
    .line 128
    return-void

    .line 129
    :cond_2
    const-string p0, "Called getViewLifecycleOwner() but onCreateView() returned null"

    .line 130
    .line 131
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final performDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/z;->l()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/o;->mLifecycleRegistry:Lhu4;

    .line 7
    .line 8
    sget-object v1, Lrt4;->ON_DESTROY:Lrt4;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lhu4;->d(Lrt4;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroidx/fragment/app/o;->mState:I

    .line 15
    .line 16
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mIsCreated:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/o;->onDestroy()V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance v0, Les7;

    .line 29
    .line 30
    const-string v1, "Fragment "

    .line 31
    .line 32
    const-string v2, " did not call through to super.onDestroy()"

    .line 33
    .line 34
    invoke-static {v1, p0, v2}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v0, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public final performDestroyView()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/z;->u(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/f0;->b()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Landroidx/fragment/app/f0;->e:Lhu4;

    .line 17
    .line 18
    iget-object v0, v0, Lhu4;->d:Lst4;

    .line 19
    .line 20
    sget-object v2, Lst4;->c:Lst4;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ltz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 29
    .line 30
    sget-object v2, Lrt4;->ON_DESTROY:Lrt4;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroidx/fragment/app/f0;->a(Lrt4;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iput v1, p0, Landroidx/fragment/app/o;->mState:I

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/o;->onDestroyView()V

    .line 41
    .line 42
    .line 43
    iget-boolean v1, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-interface {p0}, Lzl8;->getViewModelStore()Lyl8;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    sget-object v2, Lm22;->b:Lm22;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    new-instance v3, Llj3;

    .line 60
    .line 61
    sget-object v4, Lgz4;->d:Lfz4;

    .line 62
    .line 63
    invoke-direct {v3, v1, v4, v2}, Llj3;-><init>(Lyl8;Lwl8;Ln22;)V

    .line 64
    .line 65
    .line 66
    const-class v1, Lgz4;

    .line 67
    .line 68
    invoke-static {v1}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Ln81;->b()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    const-string v4, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 79
    .line 80
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v3, v1, v2}, Llj3;->b(Ln81;Ljava/lang/String;)Ltl8;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lgz4;

    .line 89
    .line 90
    iget-object v1, v1, Lgz4;->b:Lyj7;

    .line 91
    .line 92
    iget v2, v1, Lyj7;->c:I

    .line 93
    .line 94
    move v3, v0

    .line 95
    :goto_0
    if-ge v3, v2, :cond_1

    .line 96
    .line 97
    invoke-virtual {v1, v3}, Lyj7;->c(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Ldz4;

    .line 102
    .line 103
    invoke-virtual {v4}, Ldz4;->l()V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mPerformedCreateView:Z

    .line 110
    .line 111
    return-void

    .line 112
    :cond_2
    const-string p0, "Local and anonymous classes can not be ViewModels"

    .line 113
    .line 114
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_3
    new-instance v0, Les7;

    .line 119
    .line 120
    const-string v1, "Fragment "

    .line 121
    .line 122
    const-string v2, " did not call through to super.onDestroyView()"

    .line 123
    .line 124
    invoke-static {v1, p0, v2}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-direct {v0, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v0
.end method

.method public final performDetach()V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/fragment/app/o;->mState:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/o;->onDetach()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/fragment/app/o;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 18
    .line 19
    iget-boolean v1, v0, Landroidx/fragment/app/z;->J:Z

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/z;->l()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lur3;

    .line 27
    .line 28
    invoke-direct {v0}, Landroidx/fragment/app/z;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :cond_1
    new-instance v0, Les7;

    .line 35
    .line 36
    const-string v1, "Fragment "

    .line 37
    .line 38
    const-string v2, " did not call through to super.onDetach()"

    .line 39
    .line 40
    invoke-static {v1, p0, v2}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {v0, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public final performLowMemory()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 3
    .line 4
    return-void
.end method

.method public final performPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/z;->u(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 12
    .line 13
    sget-object v1, Lrt4;->ON_PAUSE:Lrt4;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/fragment/app/f0;->a(Lrt4;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o;->mLifecycleRegistry:Lhu4;

    .line 19
    .line 20
    sget-object v1, Lrt4;->ON_PAUSE:Lrt4;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lhu4;->d(Lrt4;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x6

    .line 26
    iput v0, p0, Landroidx/fragment/app/o;->mState:I

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 30
    .line 31
    return-void
.end method

.method public final performPrimaryNavigationFragmentChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/fragment/app/z;->O(Landroidx/fragment/app/o;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Landroidx/fragment/app/o;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eq v1, v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Landroidx/fragment/app/o;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/z;->g0()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/fragment/app/z;->z:Landroidx/fragment/app/o;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroidx/fragment/app/z;->r(Landroidx/fragment/app/o;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final performResume()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/z;->Q()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/z;->z(Z)Z

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x7

    .line 13
    iput v0, p0, Landroidx/fragment/app/o;->mState:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/o;->onResume()V

    .line 19
    .line 20
    .line 21
    iget-boolean v2, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/fragment/app/o;->mLifecycleRegistry:Lhu4;

    .line 26
    .line 27
    sget-object v3, Lrt4;->ON_RESUME:Lrt4;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lhu4;->d(Lrt4;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 37
    .line 38
    iget-object v2, v2, Landroidx/fragment/app/f0;->e:Lhu4;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lhu4;->d(Lrt4;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 44
    .line 45
    iput-boolean v1, p0, Landroidx/fragment/app/z;->H:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Landroidx/fragment/app/z;->I:Z

    .line 48
    .line 49
    iget-object v2, p0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 50
    .line 51
    iput-boolean v1, v2, Landroidx/fragment/app/a0;->g:Z

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroidx/fragment/app/z;->u(I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    new-instance v0, Les7;

    .line 58
    .line 59
    const-string v1, "Fragment "

    .line 60
    .line 61
    const-string v2, " did not call through to super.onResume()"

    .line 62
    .line 63
    invoke-static {v1, p0, v2}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-direct {v0, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public final performStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/z;->Q()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/z;->z(Z)Z

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    iput v0, p0, Landroidx/fragment/app/o;->mState:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/o;->onStart()V

    .line 19
    .line 20
    .line 21
    iget-boolean v2, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/fragment/app/o;->mLifecycleRegistry:Lhu4;

    .line 26
    .line 27
    sget-object v3, Lrt4;->ON_START:Lrt4;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lhu4;->d(Lrt4;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 37
    .line 38
    iget-object v2, v2, Landroidx/fragment/app/f0;->e:Lhu4;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lhu4;->d(Lrt4;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 44
    .line 45
    iput-boolean v1, p0, Landroidx/fragment/app/z;->H:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Landroidx/fragment/app/z;->I:Z

    .line 48
    .line 49
    iget-object v2, p0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 50
    .line 51
    iput-boolean v1, v2, Landroidx/fragment/app/a0;->g:Z

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroidx/fragment/app/z;->u(I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    new-instance v0, Les7;

    .line 58
    .line 59
    const-string v1, "Fragment "

    .line 60
    .line 61
    const-string v2, " did not call through to super.onStart()"

    .line 62
    .line 63
    invoke-static {v1, p0, v2}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-direct {v0, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public final performStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mChildFragmentManager:Lur3;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroidx/fragment/app/z;->I:Z

    .line 5
    .line 6
    iget-object v2, v0, Landroidx/fragment/app/z;->O:Landroidx/fragment/app/a0;

    .line 7
    .line 8
    iput-boolean v1, v2, Landroidx/fragment/app/a0;->g:Z

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0, v1}, Landroidx/fragment/app/z;->u(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/fragment/app/o;->mViewLifecycleOwner:Landroidx/fragment/app/f0;

    .line 19
    .line 20
    sget-object v2, Lrt4;->ON_STOP:Lrt4;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroidx/fragment/app/f0;->a(Lrt4;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o;->mLifecycleRegistry:Lhu4;

    .line 26
    .line 27
    sget-object v2, Lrt4;->ON_STOP:Lrt4;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lhu4;->d(Lrt4;)V

    .line 30
    .line 31
    .line 32
    iput v1, p0, Landroidx/fragment/app/o;->mState:I

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/o;->onStop()V

    .line 38
    .line 39
    .line 40
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mCalled:Z

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    new-instance v0, Les7;

    .line 46
    .line 47
    const-string v1, "Fragment "

    .line 48
    .line 49
    const-string v2, " did not call through to super.onStop()"

    .line 50
    .line 51
    invoke-static {v1, p0, v2}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v0, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public final registerForActivityResult(Lh9;Lj9;)Lo9;
    .locals 6

    .line 1
    new-instance v2, Lkm5;

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    invoke-direct {v2, p0, v0}, Lkm5;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Landroidx/fragment/app/o;->mState:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-gt v0, v1, :cond_1

    .line 12
    .line 13
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroidx/fragment/app/n;

    .line 19
    .line 20
    move-object v1, p0

    .line 21
    move-object v5, p1

    .line 22
    move-object v4, p2

    .line 23
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/n;-><init>(Landroidx/fragment/app/o;Lkm5;Ljava/util/concurrent/atomic/AtomicReference;Lj9;Lh9;)V

    .line 24
    .line 25
    .line 26
    iget p0, v1, Landroidx/fragment/app/o;->mState:I

    .line 27
    .line 28
    if-ltz p0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/fragment/app/n;->a()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p0, v1, Landroidx/fragment/app/o;->mOnPreAttachedListeners:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :goto_0
    new-instance p0, Lcr3;

    .line 40
    .line 41
    invoke-direct {p0, v3}, Lcr3;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_1
    move-object v1, p0

    .line 46
    const-string p0, "Fragment "

    .line 47
    .line 48
    const-string p1, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."

    .line 49
    .line 50
    invoke-static {p0, v1, p1}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method

.method public final requireActivity()Landroidx/fragment/app/u;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-string v0, "Fragment "

    .line 9
    .line 10
    const-string v1, " not attached to an activity."

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final requireArguments()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mArguments:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "Fragment "

    .line 7
    .line 8
    const-string v1, " does not have any arguments."

    .line 9
    .line 10
    invoke-static {v0, p0, v1}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public final requireContext()Landroid/content/Context;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-string v0, "Fragment "

    .line 9
    .line 10
    const-string v1, " not attached to a context."

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final requireView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "Fragment "

    .line 7
    .line 8
    const-string v1, " did not return a View from onCreateView() or this was called before onCreateView()."

    .line 9
    .line 10
    invoke-static {v0, p0, v1}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public final setAnimations(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mAnimationInfo:Ldr3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    if-nez p4, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/o;->e()Ldr3;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput p1, v0, Ldr3;->b:I

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/o;->e()Ldr3;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput p2, p1, Ldr3;->c:I

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/o;->e()Ldr3;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput p3, p1, Ldr3;->d:I

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/o;->e()Ldr3;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iput p4, p0, Ldr3;->e:I

    .line 37
    .line 38
    return-void
.end method

.method public final setArguments(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, v0, Landroidx/fragment/app/z;->H:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, v0, Landroidx/fragment/app/z;->I:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "Fragment already added and state has been saved"

    .line 15
    .line 16
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/o;->mArguments:Landroid/os/Bundle;

    .line 21
    .line 22
    return-void
.end method

.method public final setMenuVisibility(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mMenuVisible:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/fragment/app/o;->mMenuVisible:Z

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final setTargetFragment(Landroidx/fragment/app/o;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lbs3;->a:Las3;

    .line 4
    .line 5
    new-instance v0, Lba7;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Attempting to set target fragment "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " with request code 0 for fragment "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, p0, v1}, Lgn8;-><init>(Landroidx/fragment/app/o;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lbs3;->b(Lgn8;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lbs3;->a(Landroidx/fragment/app/o;)Las3;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-object v2, p1, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v2, v1

    .line 51
    :goto_0
    if-eqz v0, :cond_3

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    if-ne v0, v2, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const-string p0, "Fragment "

    .line 59
    .line 60
    const-string v0, " must share the same FragmentManager to be set as a target fragment"

    .line 61
    .line 62
    invoke-static {p0, p1, v0}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    :goto_1
    move-object v0, p1

    .line 71
    :goto_2
    const/4 v2, 0x0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    if-eq v0, p0, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroidx/fragment/app/o;->g(Z)Landroidx/fragment/app/o;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    const-string v0, " as the target of "

    .line 82
    .line 83
    const-string v1, " would create a target cycle"

    .line 84
    .line 85
    const-string v2, "Setting "

    .line 86
    .line 87
    invoke-static {v2, p1, v0, p0, v1}, Ld6;->k(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_5
    if-nez p1, :cond_6

    .line 92
    .line 93
    iput-object v1, p0, Landroidx/fragment/app/o;->mTargetWho:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v1, p0, Landroidx/fragment/app/o;->mTarget:Landroidx/fragment/app/o;

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 99
    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    iget-object v0, p1, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 103
    .line 104
    if-eqz v0, :cond_7

    .line 105
    .line 106
    iget-object p1, p1, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 107
    .line 108
    iput-object p1, p0, Landroidx/fragment/app/o;->mTargetWho:Ljava/lang/String;

    .line 109
    .line 110
    iput-object v1, p0, Landroidx/fragment/app/o;->mTarget:Landroidx/fragment/app/o;

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_7
    iput-object v1, p0, Landroidx/fragment/app/o;->mTargetWho:Ljava/lang/String;

    .line 114
    .line 115
    iput-object p1, p0, Landroidx/fragment/app/o;->mTarget:Landroidx/fragment/app/o;

    .line 116
    .line 117
    :goto_3
    iput v2, p0, Landroidx/fragment/app/o;->mTargetRequestCode:I

    .line 118
    .line 119
    return-void
.end method

.method public final setUserVisibleHint(Z)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lbs3;->a:Las3;

    .line 2
    .line 3
    new-instance v0, Lca7;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Attempting to set user visible hint to "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " for fragment "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, p0, v1}, Lgn8;-><init>(Landroidx/fragment/app/o;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lbs3;->b(Lgn8;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lbs3;->a(Landroidx/fragment/app/o;)Las3;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mUserVisibleHint:Z

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    const/4 v2, 0x1

    .line 44
    const/4 v3, 0x5

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget v0, p0, Landroidx/fragment/app/o;->mState:I

    .line 50
    .line 51
    if-ge v0, v3, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/o;->isAdded()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-boolean v0, p0, Landroidx/fragment/app/o;->mIsCreated:Z

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Landroidx/fragment/app/o;->mFragmentManager:Landroidx/fragment/app/z;

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Landroidx/fragment/app/z;->g(Landroidx/fragment/app/o;)Landroidx/fragment/app/d0;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iget-object v5, v4, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 74
    .line 75
    iget-boolean v6, v5, Landroidx/fragment/app/o;->mDeferStart:Z

    .line 76
    .line 77
    if-eqz v6, :cond_1

    .line 78
    .line 79
    iget-boolean v6, v0, Landroidx/fragment/app/z;->b:Z

    .line 80
    .line 81
    if-eqz v6, :cond_0

    .line 82
    .line 83
    iput-boolean v2, v0, Landroidx/fragment/app/z;->K:Z

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    iput-boolean v1, v5, Landroidx/fragment/app/o;->mDeferStart:Z

    .line 87
    .line 88
    invoke-virtual {v4}, Landroidx/fragment/app/d0;->k()V

    .line 89
    .line 90
    .line 91
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroidx/fragment/app/o;->mUserVisibleHint:Z

    .line 92
    .line 93
    iget v0, p0, Landroidx/fragment/app/o;->mState:I

    .line 94
    .line 95
    if-ge v0, v3, :cond_2

    .line 96
    .line 97
    if-nez p1, :cond_2

    .line 98
    .line 99
    move v1, v2

    .line 100
    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/o;->mDeferStart:Z

    .line 101
    .line 102
    iget-object v0, p0, Landroidx/fragment/app/o;->mSavedFragmentState:Landroid/os/Bundle;

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object p1, p0, Landroidx/fragment/app/o;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 111
    .line 112
    :cond_3
    return-void
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p0, v0, Landroidx/fragment/app/t;->e:Landroidx/fragment/app/u;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p1, "Fragment "

    .line 16
    .line 17
    const-string v0, " not attached to Activity"

    .line 18
    .line 19
    invoke-static {p1, p0, v0}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->mHost:Landroidx/fragment/app/t;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getParentFragmentManager()Landroidx/fragment/app/z;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, Landroidx/fragment/app/z;->C:Lu9;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lrr3;

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p0, v1, Lrr3;->a:Ljava/lang/String;

    .line 21
    .line 22
    iput p2, v1, Lrr3;->b:I

    .line 23
    .line 24
    iget-object p0, v0, Landroidx/fragment/app/z;->F:Ljava/util/ArrayDeque;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, v0, Landroidx/fragment/app/z;->C:Lu9;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lu9;->a(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object p0, v0, Landroidx/fragment/app/z;->w:Landroidx/fragment/app/t;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const/4 v0, -0x1

    .line 44
    if-ne p2, v0, :cond_1

    .line 45
    .line 46
    iget-object p0, p0, Landroidx/fragment/app/t;->e:Landroidx/fragment/app/u;

    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    const-string p0, "Starting activity with a requestCode requires a FragmentActivity host"

    .line 54
    .line 55
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    const-string p1, "Fragment "

    .line 60
    .line 61
    const-string p2, " not attached to Activity"

    .line 62
    .line 63
    invoke-static {p1, p0, p2}, Leq3;->i(Ljava/lang/String;Landroidx/fragment/app/o;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "{"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "} ("

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroidx/fragment/app/o;->mWho:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v1, p0, Landroidx/fragment/app/o;->mFragmentId:I

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    const-string v1, " id=0x"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v1, p0, Landroidx/fragment/app/o;->mFragmentId:I

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/o;->mTag:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    const-string v1, " tag="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Landroidx/fragment/app/o;->mTag:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_1
    const-string p0, ")"

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method
