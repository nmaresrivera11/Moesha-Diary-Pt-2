require 'rails_helper'

RSpec.describe Blog, type: :model do

  it 'is not valid without a title' do
    blog = Blog.create(content: 'Today I went to the super market. I saw a dog run acro')
    expect(blog.errors[:title]).to_not be_empty
  end

  it 'is not valid without content' do
    blog_post = Blog.create(title: '25 May 2023')
    expect(blog_post.errors[:content]).to_not be_empty
  end

  it 'should have a unique title' do
    blog = Blog.create(title: '25 May 2023', content: 'Today I went to the super market. I saw a dog run acro')
    blog2 = Blog.create(title: '25 May 2023', content: 'Today I went to the super market. I saw a dog run acro')
    expect(blog.errors[:title]).to_not eq(:title)
  end

end
