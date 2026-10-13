package com.bareapps.barebackup.home;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import com.bareapps.barebackup.R;

/** Hosts the existing overview in the Home pager; other tabs are mapped incrementally. */
public final class HomeContentPagerAdapter extends PagerAdapter {
    private final LayoutInflater inflater;
    public HomeContentPagerAdapter(LayoutInflater inflater) { this.inflater = inflater; }
    @Override public int getCount() { return 1; }
    @Override public boolean isViewFromObject(View view, Object object) { return view == object; }
    @Override public Object instantiateItem(ViewGroup container, int position) {
        View page = inflater.inflate(R.layout.home_content_page, container, false);
        container.addView(page);
        return page;
    }
    @Override public void destroyItem(ViewGroup container, int position, Object object) { container.removeView((View) object); }
}
